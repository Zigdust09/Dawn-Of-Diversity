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
    text_to_add = "tag @s remove " + species + "_has_been" + "\n\n"

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
    text_to_add = "execute as @a[tag={0}] run function dod:species/{0}/{0}_effects".format(species) + "\n\n"

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


def speciestell(species):
    file_path = "./data/dod/functions/misc/triggers/speciestell.mcfunction"
    proper_name = species.replace("_", " ")
    proper_name = proper_name.title()
    text_to_add = "tellraw @a[scores={dod_what_species_am_i=1..},tag={0}] \"You are a {proper_name}\"".format(species) + "\n\n"

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








species_name = input("Species name: ")
species_run(species_name)