import os

def proper_name(species):
    proper_name = species.replace("_", " ")
    proper_name = proper_name.title()
    return proper_name







def species_remove(species):
    file_path = "./data/dod/functions/misc/admin_functions/species_remove.mcfunction"
    text_to_add = "tag @s remove " + species + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "tag @s remove has_species"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)
        






def remove_has_species(species):
    file_path = "./data/dod/functions/misc/admin_functions/remove_has_species.mcfunction"
    text_to_add = "tag @s remove " + species + "_has_been" + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)
        





def remove_species_tags(species):
    file_path = "./data/dod/functions/misc/admin_functions/remove_species_tags.mcfunction"
    text_to_add = "tag @s remove " + species + "\n" + "tag @s remove " + species + "_has_been" + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)







def simple_species_remove(species):
    file_path = "./data/dod/functions/misc/admin_functions/simple_species_remove.mcfunction"
    text_to_add = "tag @s remove " + species + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)






def species_remove_nuzlock(species):
    file_path = "./data/dod/functions/misc/admin_functions/species_remove_nuzlock.mcfunction"
    text_to_add = "tag @s remove " + species + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)
        









def give_species_effects(species):
    file_path = "./data/dod/functions/misc/for_every_species/give_species_effects.mcfunction"
    text_to_add = "execute as @a[tag={0}] ".format(species) + """unless entity @e[distance=0..30,nbt={Item:{id:\"minecraft:netherite_block\",Count:1b}}] """ + "run function dod:species/{0}/{0}_effects".format(species) + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)














def species_blacklist_check1(species):
    file_path = "./data/dod/functions/misc/for_every_species/species_blacklist_check.mcfunction"
    text_to_add = "execute if entity @e[tag=species_blacklist,tag={0}_blacklist] run tag @s add {0}_rnd_checked".format(species) + "\n" + "execute if entity @s[tag={0}_has_been] run tag @s add {0}_rnd_checked".format(species) + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore1"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)




















def species_blacklist_check2(species):
    file_path = "./data/dod/functions/misc/for_every_species/species_blacklist_check.mcfunction"
    text_to_add = ",tag=" + species + "_rnd_checked"
    text_to_remove = "]] run tag @s add dod_rnd_has_all_species"
    text_to_also_add = "] run tag @s add dod_rnd_has_all_species"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore2"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i-1
            break
    
    read_string = str(lines[index])

    
    new_text = read_string[:-len(text_to_remove)]

    
    next_text = new_text + text_to_add + text_to_also_add + "\n"
    print(next_text)


    # Read the contents of the file
    with open(file_path, "r") as file:
        lines2 = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore2"
    index2 = 0
    for i, line2 in enumerate(lines2):
        if line2.strip() == target_line:
            index2 = i-1
            break
        

    lines2[index2] = next_text
    with open(file_path, "w") as file:
        file.writelines(lines2)
        















def species_blacklist_check3(species):
    file_path = "./data/dod/functions/misc/for_every_species/species_blacklist_check.mcfunction"
    text_to_add = "tag @s remove " + species  + "_rnd_checked" + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore3"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)








def species_run(species):
    file_path = "./data/dod/functions/misc/for_every_species/species_run.mcfunction"
    text_to_add = "execute as @s[tag={0}] at @s run function dod:species/{0}/{0}".format(species) + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)
















def rnd(species,number):
    file_path = "./data/dod/functions/misc/for_every_species/rnd.mcfunction"
    text_to_add = """## if you have it already, go again
execute if score @s dod_random_store matches {1} as @s[tag={0}_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches {1} as @s[tag={0},tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches {1} as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag={0}_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches {1} as @s[tag=!{0},tag=!{0}_has_been] at @s unless entity @e[tag=species_blacklist,tag={0}_blacklist] run tellraw @a[distance=0..] [""".format(species,number) + "{" + """"selector":"@s","bold":false,"italic":false""".format(species,number) + "},{" + """"text":" Is now a {2}\"""".format(species,number,proper_name(species)) + "}" + """]
execute if score @s dod_random_store matches {1} as @s[tag=!{0},tag=!{0}_has_been] unless entity @e[tag=species_blacklist,tag={0}_blacklist] run function dod:species/{0}/{0}_rnd""".format(species,number) + "\n\n\n\n"
 
    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)



#""" + "{" + """



#tysmmmmmmmmmmmmmmmmmmmmmmmmmmxmmmmmmmm




# I HATE THIS CODE SO MUCH I SWEAR TO FUCK 
# -Raine
#tpo*
















def files(species,number):
    os.mkdir("./data/dod/functions/species/{0}".format(species))
    open("./data/dod/functions/species/{0}/{0}_confirm.mcfunction".format(species), "x")
    open("./data/dod/functions/species/{0}/{0}_effects.mcfunction".format(species), "x")
    open("./data/dod/functions/species/{0}/{0}_item_handle.mcfunction".format(species), "x")
    open("./data/dod/functions/species/{0}/{0}_rnd.mcfunction".format(species), "x")
    open("./data/dod/functions/species/{0}/{0}.mcfunction".format(species), "x")

    file_path = "./data/dod/functions/species/{0}/{0}_confirm.mcfunction".format(species)
    with open(file_path, "w") as file:
        file.writelines("""scoreboard players enable @s dod_species_trigger_confirm
scoreboard players reset @s dod_species_trigger
scoreboard players enable @s dod_species_trigger
tellraw @s """ + "{" + """"text":"=-------------------=","color":"gold"}
tellraw @s """ + "{" + """"text":"Dawn of Diversity confirm:","color":"gold"}

tellraw @s [""" + "{" + """"text":"Are you sure you want to pick \\n{0}? : ","color":"aqua","clickEvent":""".format(proper_name(species)) + "{" + """"action":"run_command","value":"/trigger dod_species_trigger_confirm set {0}\"""".format(number) + "}}" + """,""" + "{" + """"text":"[Confirm]","color":"green"}]



tellraw @s """ + "{" + """\"text":"=-------------------=","color":"gold"}""")
        
    file_path = "./data/dod/functions/species/{0}/{0}_rnd.mcfunction".format(species)
    with open(file_path, "w") as file:
        file.writelines("""tag @s add {0}_has_been
tag @s add {0}
tag @s add has_species""".format(species))


    file_path = "./data/dod/functions/species/{0}/{0}.mcfunction".format(species)
    with open(file_path, "w") as file:
        file.writelines("""execute as @s[tag=!equip] run function dod:species/{0}/{0}_item_handle""".format(species))






















def trigger1(species,number):
    file_path = "./data/dod/functions/misc/for_every_species/trigger.mcfunction"
    text_to_add = "execute as @a[scores={dod_species_trigger=" + number + "}" + "] unless entity @e[tag=species_blacklist,tag={0}_blacklist] run function dod:species/{0}/{0}_confirm".format(species) + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore1"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)













def trigger2(species,number):
    file_path = "./data/dod/functions/misc/for_every_species/trigger.mcfunction"
    text_to_add = "execute as @a[scores={dod_species_trigger=" + number + "}" + "] if entity @e[tag=species_blacklist,tag={0}_blacklist] run function dod:misc/species_trigger_blacklist".format(species) + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore2"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)













def trigger3(species,number):
    file_path = "./data/dod/functions/misc/for_every_species/trigger.mcfunction"
    text_to_add = "execute as @a[scores={dod_species_trigger_confirm=" + number + "}" + "] run tag @s add {0}".format(species) + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore3"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)















def speciestell(species):
    file_path = "./data/dod/functions/misc/triggers/speciestell.mcfunction"
    species_name = proper_name(species)
    text_to_add = "tellraw @a[scores={dod_what_species_am_i=1..}," + "tag={0}] \"You are a {1}\"".format(species, species_name) + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)













def bookgivebasic(species,number):
    file_path = "./data/dod/functions/misc/book/bookgivebasic.mcfunction"
    text_to_add = ",{" + """\"text":\"""" + "\\" + "\\" + """n""" + "\\" + "\\" + """n{0}","color":"red","bold":true,"underlined":true,"hoverEvent":""".format(proper_name(species),number) + "{" + """\"action":"show_text","value":[""" + "{" + """\"text":"-A""" + "\\" + "\\" + """n-B""" + "\\" + "\\" + """n-C\"""" + "}" + """]""" + "}" + ""","clickEvent":""" + "{" + """\"action":"run_command","value":"/trigger dod_species_trigger set {0}\"""".format(number) + "}}" + """""".format(species,number)
    text_to_remove = """]]']} 1"""
    text_to_also_add = """]']} 1"""

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i-1
            break
    
    read_string = str(lines[index])

    
    new_text = read_string[:-len(text_to_remove)]

    
    next_text = new_text + text_to_add + text_to_also_add + "\n"
    print(next_text)


    # Read the contents of the file
    with open(file_path, "r") as file:
        lines2 = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore"
    index2 = 0
    for i, line2 in enumerate(lines2):
        if line2.strip() == target_line:
            index2 = i-1
            break
        

    lines2[index2] = next_text
    with open(file_path, "w") as file:
        file.writelines(lines2)





















































































species_name = input("Species name: ")
species_number = input("Species numer: ")
# i typed numer instead of number by mistake and i thought it was funny, i wanted to keep the typo but x didnt, so we had a silent war for about 40 min before we finally settled on this (he didnt even accept my complimentary #b compremise)

bookgivebasic(species_name,species_number)
species_remove(species_name)
remove_has_species(species_name)
remove_species_tags(species_name)
simple_species_remove(species_name)
species_remove_nuzlock(species_name)
give_species_effects(species_name)
species_blacklist_check1(species_name)
species_blacklist_check2(species_name)
species_blacklist_check3(species_name)
species_run(species_name)
rnd(species_name,species_number)
files(species_name,species_number)
trigger1(species_name,species_number)
trigger2(species_name,species_number)
trigger3(species_name,species_number)
speciestell(species_name)



# If you are reading this you are probably smarter than us -xWires