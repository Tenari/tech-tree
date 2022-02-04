# society.rb

A command line tool for describing essential technologies and their dependencies

The uses of this thing are:

- to understand the dependency structure of modern technology
- to isolate the most important components of technology
- to enable more self-sufficient existences by localizing particular technologies

What does that mean? Well, take milton friedman's classic example of the pencil. "Noboy knows how to make a pencil." He's right. The modern technology that goes into pencil making is so distributed and interdependent that a whole graph would be if not impossible, certainly impractical to analyze and describe. However, he's wrong in the sense that a pencil is just a marking component, a grip component and an erasing component assembled into an ergonomic fashion. While it may not be practical to duplicate precisely any exact pencil on the market in a one-off or small batch scenario, it is certainly theoretically possible to create a pencil "from scratch" or at least from components which depend on the fragile, interconnected web of modern production as little as possible, with only the pre-requisite of a few more general purpose production tools, and basic, common materials. We accomplish this feat of "making a pencil" by first, analyzing the object to list the minimum "required" dependencies and materials, then formulating a recipie using those tools and materials, and then just making the damn thing.

But more than enabling production of just pencils, it is probable that in terms of tool-dependencies, relatively few are required to enable production of a relatively wide range of items, which implies that by creating/owning these "key" tools, and securing a source of common raw material, an impressive array of material needs from soceity can be independently produced. This is the core of self-sufficiency.

## structure

There are two components to a techonology: the human and the material. The material is referred to as the "tool" and the human is the "role" or "operator". For example, the "hammer" is a tool used by a human performing the role of "builder".

### tools

Tools are created by a human following a *recipie*, which utilizes other *tools* and *materials*. The human may require *skills* in order to perform the recipie. There are often multiple versions of a tool, such as a *stone hammer* and a *steel hammer* both being a *hammer*. Thus the data-description of a tool consists of an array of versions of that tool, where each version contains:

- name
- description
  - textual
  - visual/schematic
- version number
- necessary materials for creation
- pre-requisite tools for creation
- recipie for creation

The "necessary materials for creation" is a list of pointers to raw elements or naturally occuring materials. The "pre-requisite tools for creation" is a list of pointers to other tools (ideally) within the database. The recipie is merely a recommended route to the creation of the technology. Obviously there are an innumerable number of ways to go about fashioning most tools, so for feasibility we include only one, which (ideally) balances limiting the number of pre-requitisites and materials, while at the same time limiting human labor. Generally, more advanced pre-requisites can be used to produce a given tool with less input human labor, but we try to limit use of advanced technology as much as possible, while still being reasonable about human effort, since advanced tools are generally good for mass production, not one-off or small batch production which is what this is largely centered around.

#### materials

Materials are either raw elements like _Cu (copper)_ or natural materials like _stone_. Composites/intermediate substrates like _cloth_ are considered tools, since they are man-made and follow a recipie. Each natural material is composed of raw elements in a certain structure and ratio. Each natural material can have multiple versions as well, so a material consists of an array of versions where each version contains:

- name
- description
  - textual
  - visual/schematic
- version number
- elements
- element ratios

### roles

### Current Dependence and Self-Sufficiency

Obviously, complete isolation from modern society entails drastic lowering of technology. There are certain amenaties of modernity that one man or one small group cannot sustain on their own. However with only a small/limited connection to the rest of society, and sufficient preparation/prerequities, substantial isolation can be attained, without substantial reduction of technological or amenity level.

Core provisions of modernity:
- running water/plumbing
- electric and combustible liquid power
- food
- clothing
- housing
- waste disposal
- tools
- security
- education / socialization
- transportation
- trinkets/junk
- entertainment

Self-sufficient replacements:
- water = well + rainfall collection
- sewage ? septic tank? still need to get it cleaned out. dunno
- power = ideal is flowing water as power source, but solar, solid fuel burning, wind are all additionally useful
- food = farming and ranching
- clothing
- housing = self-built cordwood home on owned land
- waste disposal
- tools =

#### Food

meat:
- chicken
- rabbit
- pork

veggies:
- potatoes
- onions
- jalapenos
- tomatoes
- garlic
- oregano

other:
- eggs
- milk
- tea
- cheese
- yogurt
