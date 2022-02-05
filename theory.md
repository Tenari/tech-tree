# Musings

*stuff* is the main building block of technology. It could be an end-product, like a ham sandwich, or it could be an ingredient like flour. Of course, to a miller, flour is the end-product. This is key to the nature of technology--stuff can be used to produce other stuff, and is sometimes a tool, sometimes a resource, and sometimes the end-goal.

*stuff* is created by:
  1. gathering *materials*
  2. gathering *tools*
  3. performing transformations on those materials using those tools in a sequence known as a *recipe*

*stuff* is connected to other *stuff* by being a *material for* or a *tool for*. Thus all *tools* are stuff, and all *materials* are stuff, but not all stuff is a material or a tool or either. Example:

```
  hammer -[tool for]-> fence
  fence post -[material for]-> fence
  wood -[material for]-> fence post -[material for]-> fence
```

This simple example illustrates that key property of technology, it's multi-layered nature. By following the connections between *stuff* arbitrarily far up the tree, we can generate a compound recipe from arbirarily base materials/tools. Of course, this assumes a completely fleshed out tree, which is impossible, so every tree will terminate in some level of vagueness like "find a rock" or something, since you can't make literally everything from scratch.

How do we deal with the fact that there are huge amounts of variations on any given *stuff*? Like how many different kinds of "hammer" are there? Well, generally, we follow this rule: *stuff* is vauge, *recipes* are precise. What we mean by that, is that *stuff* is always a category of things. If it's a sub-type of stuff (has a parent_id) it'll be a specific category, sometimes a very specific category, but it's always a category. But a *recipe* is always a specific way to make a specific stuff. If people want to adapt the recipe, that's on them. Where recipes require precise ingredients, they will refer to as precise a sub-type of stuff as necessary, and where they are ambivalent, they will refer to a higher level, more vague *stuff*.

## Data model

- Stuff:
  - name: text
  - description: text (dictionary definition/explanation of what the stuff is)
  - image: string (link to image of the stuff)
  - parent_id: integer (the optional id of a parent stuff if this is a sub-type of stuff)
  - sub-types: list of stuff (has_many stuff as sub_stuff)
  - recipes: list of *recipe* (includes recipes for sub-types)
  - notes: text (musings about variations, failure modes, design considerations, etc)
- Recipe:
  - belongs_to Stuff (the stuff this produces)
  - source: string (attribution to the inventor of the method)
  - demonstration: string (link to video/image collection demonstrating process)
  - steps: text (numbered list of steps instructing on how to use materials and tools to create the stuff)
  - materials: list of stuff (has_many stuff as materials)
  - tools: list of stuff (has_many stuff as tools)

## Usage

Say you want to create a fence, but you don't know how.

```
> tech search fence
123  Wood Fence
124  Stone Fence
125  Iron Fence
234  Fence-post
M    ...show more results...
?    
```
so you type in 123, the id of the likely match to what you meant
```
?    123
Wood Fence - a structure that encloses an area, typically outdoors, and is usually constructed from posts that are connected by boards, wire, rails or netting. A fence differs from a wall in not having a solid foundation along its whole length.
```
and it gives you a description. Looks good so you want to see how to make it:
```
> tech how 123
Wood Fence:
(first method)
  Materials:
    - fence slats
    - fence posts
    - fence crossbars
    - nails
  Tools:
    - measuring tape
    - shovel
    - post-hole-digger
    - hammer
  Recipe:
    1. measure fenceline
    2. dig post holes on corners and along fence-line at even intervals the length of your crossbars
    3. seat fence-posts
    4. nail crossbars to posts
    5. nail fence slats to crossbars

see next method? Y/n
```
that method looks good, but you want to know how to make fence slats, as part of your recipe, so you ask to *expand* `-e` the `'fence slats'` material by inserting the first recipe for creating fence slats into this recipe
```
> tech how -e 'fence slats' 123.1

Wood Fence - method 1:
  Materials:
    - wood
    - fence posts
    - fence crossbars
    - nails
  Tools:
    - measuring tape
    - shovel
    - post-hole-digger
    - hammer
    - table saw
  Recipe:
    1. use table saw to cut large block of wood into long thin fence-slats
    2. measure fenceline
    3. dig post holes on corners and along fence-line at even intervals the length of your crossbars
    4. seat fence-posts
    5. nail crossbars to posts
    6. nail fence slats to crossbars
```
and it has automagically substituted `'fence slats'` with the list of materials necessary for making them from scratch (`wood` in this case), and has added a step (or more in most cases) to the top of the recipe.

Could also be used to generate a list of tech dependencies for a thing like
```
> tech deps -n 1 123.1
  Materials:
    - stuff1
    - stuff2
  Tools:
    - stuff1
    - stuff2
```
where `-n 1` refers to how many levels back to replace. (how "basic"/"from scratch" to go)
