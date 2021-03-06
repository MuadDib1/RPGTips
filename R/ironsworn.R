## Dice ----

iron_dice <- function(bonus=0){
  a <- sample(1:6, 1) + bonus
  if(a>10) a <- 10
  b <- sample(1:10,1)
  c <- sample(1:10,1)
  t <- (a>b) + (a>c)
  if(t == 2){
    r <- "Strong Hit"
  }else if(t == 1){
    r <- "Weak Hit"
  }else{
    r <- "Miss"
  }
  if(b == c) r <- paste(r, "and Match!")
  return(r)
}

## Challenge Rank ----
iron_challenge <- function(){
  r <- c(rep("Troublesome (1/5)", 20),
         rep("Dangerous (2/5)", 35),
         rep("Formidable (3/5)", 25),
         rep("Extreme (4/5)", 14),
         rep("Epic (5/5)", 6))
  return(sample(r,1))
}

## Plot twists ----
iron_plot_twist <- function(){
  return(sample(c('It was all a diversion.', 'A dark secret is revealed.', 'A trap is sprung.',
                  'An assumption is revealed to be false.', 'A secret alliance is revealed.',
                  'Your actions benefit an enemy.', 'Someone returns unexpectedly.',
                  'A more dangerous foe is revealed.', 'You and an enemy share a common goal.',
                  'A true identity is revealed.', 'You are betrayed by someone who was trusted.',
                  'You are too late.','The true enemy is revealed.','The enemy gains new allies.',
                  'A new danger appears.','Someone or something goes missing.',
                  'The truth of a relationship is revealed.',
                  'Two seemingly unrelated situations are shown to be connected.',
                  'Unexpected powers or abilities are revealed.',
                  'Roll twice more on this table. Both results occur. If they are the same result, make it more dramatic.'),1))
}

## Combat actions ----
iron_combat_actions <- function(){
  actions <- c(rep("Compel a surrender", 3),
               rep("Coordinate with allies", 3),
               rep("Gather reinforcements", 3),
               rep("Seize something or someone", 4),
               rep("Provoke a reckless response", 4),
               rep("Intimidate or frighten", 4),
               rep("Reveal a surprising truth", 4),
               rep("Shift focus to someone or something else", 4),
               rep("Destroy something or render it useless", 4),
               rep("Take a decisive action", 4),
               rep("Reinforce defenses", 6),
               rep("Ready an action", 7),
               rep("Use the terrain to gain advantage", 8),
               rep("Leverage the advantage of a weapon or ability", 8),
               rep("Create an opportunity", 10),
               rep("Attack with precision", 11),
               rep("Attack with power", 10),
               rep("Take a completely unexpected action", 1))
  sample(actions, 1)
}

## NPC Disposition ----
iron_npc_disposition <- function(){
  r <- c(rep("Helpful", 6),
         rep("Friendly", 7),
         rep("Cooperative", 7),
         rep("Curious", 7),
         rep("Indifferent", 9),
         rep("Suspicious", 11),
         rep("Wanting", 10),
         rep("Desperate", 10),
         rep("Demanding", 9),
         rep("Unfriendly", 9),
         rep("Threatening", 8),
         rep("Hostile", 7))
  return(sample(r,1))
}
##
## NPC Goals ----
iron_npc_goal <- function(){
  r <- c('Obtain an object','Make an agreement','Build a relationship','Undermine a relationship',
         'Seek a truth','Pay a debt','Refute a falsehood','Harm a rival','Cure an ill','Find a person',
         'Find a home','Seize power','Restore a relationship','Create an item','Travel to a place',
         'Secure provisions','Rebel against power','Collect a debt','Protect a secret','Spread faith',
         'Enrich themselves','Protect a person','Protect the status quo','Advance status','Defend a place',
         'Avenge a wrong','Fulfill a duty','Gain knowledge','Prove worthiness','Find redemption',
         'Escape from something','Resolve a dispute')
  return(sample(r,1))
}

## NPC Role ----
iron_npc_role <- function(){
  r <- c(rep("Criminal", 2),
         rep("Healer", 2),
         rep("Bandit", 2),
         rep("Guide", 3),
         rep("Performer", 3),
         rep("Miner", 3),
         rep("Mercenary", 3),
         rep("Outcast", 3),
         rep("Vagrant", 3),
         rep("Forester", 3),
         rep("Traveler", 3),
         rep("Mystic", 3),
         rep("Priest",3),
         rep("Sailor", 3),
         rep("Pilgrim", 3),
         rep("Thief", 3),
         rep("Adventurer", 3),
         rep("Forager", 3),
         rep("Leader", 3),
         rep("Guard", 4),
         rep("Artisan", 4),
         rep("Scout", 4),
         rep("Herder", 4),
         rep("Fisher", 4),
         rep("Warrior",5),
         rep("Hunter",5),
         rep("Raider",5),
         rep("Trader",5),
         rep("Farmer",5))
  return(sample(r,1))
}

## Settlement trouble ----
iron_settlement_trouble <- function(){
  r <- c('Outsiders rejected','Dangerous discovery','Dreadful omens','Natural disaster',
         'Old wounds reopened','Important object is lost','Someone is captured','Mysterious phenomenon',
         'Revolt against a leader','Vengeful outcast','Rival settlement','Nature strikes back','Someone is missing',
         'Production halts','Mysterious murders','Debt comes due','Unjust leadership','Disastrous accident',
         'In league with the enemy','Raiders prey on the weak','Cursed past','An innocent is accused',
         'Corrupted by dark magic','Isolated by brutal weather','Provisions are scarce','Sickness run amok',
         'Allies become enemies','Attack is imminent','Lost caravan','Dark secret revealed','Urgent expedition',
         'A leader falls','Families in conflict','Incompetent leadership','Reckless warmongering','Beast on the hunt',
         'Betrayed from within','Broken truce','Wrathful haunt','Conflict with firstborn','Trade route blocked',
         'In the crossfire','Stranger causes discord','Important event threatened', 'Dangerous tradition')
  return(sample(r,1))
}

## Locations ----
iron_locations <- function(){
  r <- c("Hideout",
         "Ruin",
         "Mine",
         "Waste",
         "Mystical Site",
         "Path",
         "Outpost",
         "Wall",
         "Battlefield",
         "Hovel",
         "Spring",
         "Lair",
         "Fort",
         "Bridge",
         "Camp",
         "Cairn/Grave",
         rep("Caravan", 2),
         rep("Waterfall",2),
         rep("Cave", 2),
         rep("Swamp", 2),
         rep("Fen",2),
         rep("Ravine",2),
         rep("Road", 2),
         rep("Tree",2),
         rep("Pond",2),
         rep("Fields",2),
         rep("Marsh",2),
         rep("Steading",2),
         rep("Rapids",2),
         rep("Pass",2),
         rep("Trail",2),
         rep("Glade",2),
         rep("Plain",2),
         rep("Ridge",2),
         rep("Cliff",2),
         rep("Grove",2),
         rep("Village",2),
         rep("Moor",2),
         rep("Thicket",2),
         rep("River ford",2),
         rep("Valley",2),
         rep("Bay/Fjord",2),
         rep("Foothills",2),
         rep("Lake",2),
         rep("River",3),
         rep("Forest",4),
         rep("Coast",4),
         rep("Hill",5),
         rep("Mountain",5),
         rep("Woods",6),
         "Anomaly")
  sample(r,1)
}
