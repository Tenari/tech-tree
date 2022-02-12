GenericTool.create!([
  {name: "Crucible", description: "A heat-resistant container, in which to melt various substances (usually metal)."},
  {name: "Hammer", description: "a hand tool for amplifying blunt/pounding/striking force by using a lever-arm and hard surface at one end."}
])
Recipe.create!([
  {name: "basic fence", stuff_id: 1, source: nil, demonstration: nil},
  {name: "Rope Making Machine | Incredible Survival Hack", stuff_id: 3, source: "The King of Random", demonstration: "https://www.youtube.com/watch?v=ddenqErLL0Q"},
  {name: "basic clay pot", stuff_id: 14, source: "daniel zapata", demonstration: "https://www.youtube.com/watch?v=_YDuLCIzbN4"},
  {name: "wood fire with matches", stuff_id: 21, source: "", demonstration: ""},
  {name: "hand-threshing", stuff_id: 26, source: "", demonstration: ""},
  {name: "hand-grinding with quern", stuff_id: 32, source: "", demonstration: ""},
  {name: "simplest possible flatbread", stuff_id: 30, source: "", demonstration: ""}
])
RecipeMaterial.create!([
  {recipe_id: 2, stuff_id: 7, quantity: "1.0", unit: "item"},
  {recipe_id: 2, stuff_id: 5, quantity: "3.0", unit: "item"},
  {recipe_id: 4, stuff_id: 17, quantity: "1.0", unit: "pile"},
  {recipe_id: 4, stuff_id: 18, quantity: "1.0", unit: "as necessary"},
  {recipe_id: 6, stuff_id: 6, quantity: "1.0", unit: "pile"},
  {recipe_id: 6, stuff_id: 22, quantity: "1.0", unit: "small pile"},
  {recipe_id: 7, stuff_id: 24, quantity: "1.0", unit: "field"},
  {recipe_id: 8, stuff_id: 26, quantity: "1.0", unit: "pile"},
  {recipe_id: 9, stuff_id: 32, quantity: "1.0", unit: "cup"},
  {recipe_id: 9, stuff_id: 18, quantity: "1.0", unit: "cup"}
])
RecipeTool.create!([
  {recipe_id: 2, stuff_id: 9, quantity: "1.0"},
  {recipe_id: 4, stuff_id: 20, quantity: "1.0"},
  {recipe_id: 4, stuff_id: 21, quantity: "1.0"},
  {recipe_id: 6, stuff_id: 23, quantity: "1.0"},
  {recipe_id: 7, stuff_id: 27, quantity: "1.0"},
  {recipe_id: 7, stuff_id: 28, quantity: "1.0"},
  {recipe_id: 7, stuff_id: 16, quantity: "2.0"},
  {recipe_id: 8, stuff_id: 33, quantity: "1.0"},
  {recipe_id: 8, stuff_id: 19, quantity: "1.0"},
  {recipe_id: 9, stuff_id: 20, quantity: "1.0"},
  {recipe_id: 9, stuff_id: 21, quantity: "1.0"}
])
Step.create!([
  {recipe_id: 2, order: 1, text: "cut wood to size with [circle saw](/stuffs/9)", image: "", demonstration: ""},
  {recipe_id: 2, order: 2, text: "drill holes", image: "", demonstration: ""},
  {recipe_id: 2, order: 3, text: "fasten together", image: "", demonstration: ""},
  {recipe_id: 4, order: 1, text: "add [water](/stuffs/18) to [clay](/stuffs/17) until the clay is wet enough to mold with your hands", image: "", demonstration: ""},
  {recipe_id: 4, order: 2, text: "place an even layer of wet [clay](/stuffs/17) on the [flat stone](/stuffs/20) to form the base of the pot", image: "", demonstration: ""},
  {recipe_id: 4, order: 3, text: "shape the base layer into a circle of desired diameter", image: "", demonstration: ""},
  {recipe_id: 4, order: 4, text: "layer clay in coils around the edge of the circle base layer to form the walls. layer to desired height", image: "", demonstration: ""},
  {recipe_id: 4, order: 5, text: "smooth the walls and clay to desired shape", image: "", demonstration: ""},
  {recipe_id: 4, order: 6, text: "let dry in the hot sun for a few days", image: "", demonstration: ""},
  {recipe_id: 4, order: 7, text: "place the dried clay pot into a [fire](/stuffs/21) to fully harden", image: "", demonstration: ""},
  {recipe_id: 4, order: 8, text: "let the fire burn out and let the clay pot cool off", image: "", demonstration: ""},
  {recipe_id: 6, order: 1, text: "arrange [twigs](/stuffs/22) in a teepee-like pile on the ground", image: "", demonstration: ""},
  {recipe_id: 6, order: 2, text: "arrange larger [wood](/stuffs/6) in a larger teepee-like pile above the twigs pile, leaving one side open for access to the twigs", image: "", demonstration: ""},
  {recipe_id: 6, order: 3, text: "light the [match](/stuffs/23) and touch the flame to the twig pile to ignite it", image: "", demonstration: ""},
  {recipe_id: 6, order: 4, text: "blow gently as necessary to spread the flame until the fire is going strong", image: "", demonstration: ""},
  {recipe_id: 7, order: 1, text: "cut down wheat with sythe", image: "", demonstration: ""},
  {recipe_id: 7, order: 2, text: "bundle wheat stalks together (using a wheat stalk to tie the bundle) and let dry for several days", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/WheatPennsylvania1943.jpg/440px-WheatPennsylvania1943.jpg", demonstration: ""},
  {recipe_id: 7, order: 3, text: "beat the wheat stalks with grain flail to separate wheat grain from stalk. this produces a mixture of chaff and grain", image: "", demonstration: ""},
  {recipe_id: 7, order: 4, text: "sift the grains from the chaff by pouring the mixture from one container to the other, while there is a strong breeze, allowing the heavier grains to fall into the second container, and the lighter chaff to blow away", image: "", demonstration: ""},
  {recipe_id: 8, order: 1, text: "add wheat grains to depression/indentation in quern-stone", image: "", demonstration: ""},
  {recipe_id: 8, order: 2, text: "smash the grains into a fine powder with the other stone", image: "", demonstration: ""},
  {recipe_id: 9, order: 1, text: "mix wheat flour and water together until it has an even consistency, to make dough", image: "", demonstration: ""},
  {recipe_id: 9, order: 2, text: "flatten the dough into a thin even layer on top of the flat stone", image: "", demonstration: ""},
  {recipe_id: 9, order: 3, text: "put the flat stone and dough onto a fire", image: "", demonstration: ""},
  {recipe_id: 9, order: 4, text: "bake until the bread is a satisfactory texture", image: "", demonstration: ""},
  {recipe_id: 9, order: 5, text: "remove stone and bread from fire", image: "", demonstration: ""}
])
Stuff.create!([
  {name: "Fence", description: "A structure that encloses an area, typically outdoors, and is usually constructed from posts that are connected by boards, wire, rails or netting. A fence differs from a wall in not having a solid foundation along its whole length.", notes: "Alternatives to fencing include a ditch (sometimes filled with water, forming a moat).\r\n\r\nYou should consider the purpose your fence will serve before deciding the type to use, since they vary in form an function quite a lot.", parent_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Westtown.jpg/440px-Westtown.jpg"},
  {name: "Barbed Wire Fence", description: "A type of Wire Fence, where the wire has \"barbs\" which are sharp pieces of metal poking out at regular intervals, to discourage livestock (or people) from messing with the fence.\r\n\r\nThe principle of wire fences is that they are supported mainly by tension, being stretched between heavy strutted or guy-wired posts at ends, corners, and ideally at intervals in longer stretches (every 50 to 300 metres, 150 to 1000 feet). Between these braced posts are additional smaller wooden or metal posts which keep the wires spaced and upright, usually 3 to 6 metre (10 to 20 feet) apart, depending on the style of fencing used.", notes: "Commonly used as agricultural fencing to keep livestock in.\r\n\r\nBarbed wire has been made by many manufacturers in an almost endless variety of styles. For the most part these were functionally identical. The differences reflected peculiarities of each manufacturing process rather than deliberate design of the end product. Sections of unusual barbed wire are collected by some enthusiasts.\r\n\r\nThe traditional barbed wire used since the late 19th century and into the present day was made from two mild steel wires twisted together, usually of about 12 or 14 gauge, with about 15-30 twists per metre. Steel barbs were attached every 10–20 cm. Barbs had either two or four points, with the two point design using somewhat heavier and longer barbs. The relative merits of two point vs. four point barbed wire are the subject of deeply held views among many farmers and ranchers, to the extent that both types are still made today.\r\n\r\nTypically four strands of barbed wire, with the lowest strand no more than 12 inches (300 mm) from the ground and the top strand at least 48 inches above the ground, make up a legal fence in the western United States. Better-quality fences have five strands, older fences often had only three strands, and just two strands is widely used in Britain if only adult cattle are being contained. Other variations exist, depending on local laws and the purpose of the fence.\r\n\r\nBarbed wire is particularly effective for containing cattle. In pastures containing both cattle and sheep, one or two strands of barbed wire is used in conjunction with woven wire to both discourage cattle from reaching over the top of a fence and to keep sheep from crawling under. Though often used in many areas for horses, barbed wire is not advised; its use is considered poor management. There is very high risk of injury occurring when a thin-skinned, fast-moving animal with long legs runs into it or puts a leg through the strands.", parent_id: 1, image: "https://upload.wikimedia.org/wikipedia/commons/8/89/Barbed_Wire%2C_SC%2C_Victoria%2C_15.9.2007.jpg"},
  {name: "Rope Making Machine", description: "a machine to automate the twisting and braiding of rope", notes: "small scale, personal use", parent_id: nil, image: "https://i.imgur.com/CzjRb1d.png"},
  {name: "Eye bolt", description: "a bolt with an \"eye\" on the end. (a loop for easy attachment to things\"", notes: "comes in many size and materials", parent_id: nil, image: "https://duckduckgo.com/i/7a1e87e1.jpg"},
  {name: "0.25in x 5in Eye Bolt", description: "an eye bolt with thickness 0.25 inches, and length 5 inches", notes: "", parent_id: 4, image: ""},
  {name: "Wood", description: "its fucking wood you dumbass", notes: "", parent_id: nil, image: ""},
  {name: "1\" x 6\" x 6' Common Board", description: "", notes: "", parent_id: 6, image: "https://i.imgur.com/SqapyrV.png"},
  {name: "Saw", description: "thin tool with serrated teeth for cutting, usually of metal", notes: "typically a tool, not a material", parent_id: nil, image: ""},
  {name: "Circle Saw", description: "power tool", notes: "", parent_id: 8, image: "https://i.imgur.com/NzP5JBA.png"},
  {name: "Hand Saw", description: "a handheld tool for sawing", notes: "", parent_id: 8, image: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.harborfreight.com%2Fmedia%2Fcatalog%2Fproduct%2Fi%2Fm%2Fimage_18305.jpg&f=1&nofb=1"},
  {name: "primitive hand saw", description: "", notes: "tool", parent_id: 10, image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn11.bigcommerce.com%2Fs-fme25%2Fimages%2Fstencil%2F1280x1280%2Fproducts%2F5149%2F75949%2Fcap244yyy__84891.1584749877.jpg%3Fc%3D2&f=1&nofb=1"},
  {name: "metal hand saw", description: "", notes: "", parent_id: 10, image: ""},
  {name: "hacksaw", description: "", notes: "", parent_id: 12, image: ""},
  {name: "clay pot", description: "a container which holds its shape", notes: "", parent_id: 15, image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.bPJC33PGbfYw_MseEXR_HAHaLH%26pid%3DApi&f=1"},
  {name: "pot", description: "a rigid container, typically of ceramic", notes: "", parent_id: 16, image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimg2.cgtrader.com%2Fitems%2F2051934%2F04fe03fb76%2Fancient-clay-pots-3d-model-low-poly-max--obj-mtl-fbx.jpg&f=1&nofb=1"},
  {name: "container", description: "a solid item which can contain stuff", notes: "", parent_id: nil, image: ""},
  {name: "clay", description: "a type of fine-grained natural soil material containing clay minerals. Clays develop plasticity when wet, due to a molecular film of water surrounding the clay particles, but become hard, brittle and non–plastic upon drying or firing. Most pure clay minerals are white or light-coloured, but natural clays show a variety of colours from impurities, such as a reddish or brownish colour from small amounts of iron oxide.", notes: "", parent_id: nil, image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimg1.wsimg.com%2Fisteam%2Fip%2F733d6abf-2210-42ed-b55a-630b84f4e7cb%2Fols%2F006-0001.JPG%2F%3A%2Frs%3Dw%3A1200%2Ch%3A1200&f=1&nofb=1"},
  {name: "water", description: "Water (chemical formula H2O) is an inorganic, transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth's hydrosphere and the fluids of all known living organisms (in which it acts as a solvent). It is vital for all known forms of life, even though it provides no calories or organic nutrients.", notes: "", parent_id: nil, image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.globalmomschallenge.org%2Fwp-content%2Fuploads%2F2015%2F03%2F1702189647_03d15f58b0_o.jpg&f=1&nofb=1"},
  {name: "stone", description: "", notes: "", parent_id: nil, image: ""},
  {name: "flat stone", description: "", notes: "", parent_id: 19, image: ""},
  {name: "fire", description: "Fire is the rapid oxidation of a material (the fuel) in the exothermic chemical process of combustion, releasing heat, light, and various reaction products.", notes: "", parent_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Large_bonfire.jpg/500px-Large_bonfire.jpg"},
  {name: "twig", description: "a small thin piece of natural wood", notes: "", parent_id: 6, image: ""},
  {name: "match", description: "A match is a tool for starting a fire. Typically, matches are made of small wooden sticks or stiff paper. One end is coated with a material that can be ignited by friction generated by striking the match against a suitable surface.", notes: "", parent_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Streichholz.jpg/440px-Streichholz.jpg"},
  {name: "wheat", description: "Wheat is a grass widely cultivated for its seed, a cereal grain which is a worldwide staple food. The many species of wheat together make up the genus Triticum; the most widely grown is common wheat (T. aestivum).", notes: "", parent_id: nil, image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0jFURyacEInq8jIiKBPxpwHaE8%26pid%3DApi&f=1"},
  {name: "grain", description: "A grain is a small, hard, dry seed – with or without an attached hull or fruit layer – harvested for human or animal consumption.", notes: "", parent_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Dhaniyangal.jpg/440px-Dhaniyangal.jpg"},
  {name: "wheat grain", description: "", notes: "", parent_id: 25, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Naked_and_hulled_wheat.jpg/440px-Naked_and_hulled_wheat.jpg"},
  {name: "sythe", description: "A scythe is an agricultural hand tool for mowing grass or harvesting crops. It is historically used to cut down or reap edible grains, before the process of threshing.", notes: "", parent_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Scythe_user.png/440px-Scythe_user.png"},
  {name: "grain flail", description: "The flail, a pair of connected sticks used to beat the grain, evolved from the early method of using a single stick.", notes: "", parent_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Dreschflegel.jpg/440px-Dreschflegel.jpg"},
  {name: "bread", description: "Bread is a staple food prepared from a dough of flour (usually wheat) and water, usually by baking.", notes: "", parent_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Korb_mit_Br%C3%B6tchen.JPG/500px-Korb_mit_Br%C3%B6tchen.JPG"},
  {name: "flatbread", description: "A flatbread is a bread made with flour; water, milk, yogurt, or other liquid; and salt, and then thoroughly rolled into flattened dough. Many flatbreads are unleavened, although some are leavened, such as pizza and pita bread.\r\n\r\nFlatbreads range from below one millimeter to a few centimeters thick so that they can be easily eaten without being sliced. They can be baked in an oven, fried in hot oil, grilled over hot coals, cooked on a hot pan, tava, comal, or metal griddle, and eaten fresh or packaged and frozen for later use.", notes: "", parent_id: 29, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Flatbread.JPG/500px-Flatbread.JPG"},
  {name: "flour", description: "Flour is a powder made by grinding raw grains, roots, beans, nuts, or seeds. Flours are used to make many different foods. Cereal flour, particularly wheat flour, is the main ingredient of bread, which is a staple food for many cultures.", notes: "", parent_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flours.jpg/440px-Flours.jpg"},
  {name: "wheat flour", description: "", notes: "", parent_id: 31, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/All-Purpose_Flour_%284107895947%29.jpg/1599px-All-Purpose_Flour_%284107895947%29.jpg"},
  {name: "Quern-stones", description: "Quern-stones are stone tools for hand-grinding a wide variety of materials.", notes: "", parent_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Quernupper.jpg/440px-Quernupper.jpg"}
])
Tool.create!([
  {type: "", name: "Graphite Crucible (alpha)", description: "A graphite crucible made of graphite, borasilicate glass, silicon carbide, and fire clay.", schematic: "", recipie: "1. mix the materials\r\n2. shape the crucible\r\n3. fire it", generic_tool_id: 1, demonstration: "https://youtube.com/watch?v=HuM4xSNX0no"},
  {type: nil, name: "Stone Hammer", description: "A simple hand tool made from available stone and wood, for pounding/striking.", schematic: "", recipie: "  - find a smooth, hard stone that is narrower at one end\r\n  - find a forearm-sized stick of appropriate diameter.\r\n  - burn a hole a few inches from one end, that goes through the center of the stick. hole should be large enough for the narrow end, but not the large end of the stone to be pounded through.\r\n  - pound stone into hole until firmly seated.\r\n  - optionally, tie grasses/rope around the stone and handle in an x-shape to help keep stone seated.\r\n  - optionally, use knife to shape handle for ergonomics", generic_tool_id: 2, demonstration: "https://youtube.com/watch?v=BN-34JfUrHy"}
])
