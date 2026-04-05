-- Fix for Warbot companion War Fuel not being activated properly.
-- Links the spell ID's for the "Blue/Red Filled" auras to the War Fuel items that are used to fill Warbots with Red or Blue Fuel

-- Properly link Blue War Fuel to the Blue Filled Spell Aura for the Warbot Companion
SET @ENTRY := 65673;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = @ENTRY;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(65673, -65677, 1, 'Blue War Fuel - Warbot Companion'),
(65673, 65675, 1, 'Blue War Fuel - Warbot Companion');
-- Properly link Red War Fuel to the Red Filled Spell Aura for the Warbot Companion
SET @ENTRY := 65683;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = @ENTRY;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(65683, -65675, 1, 'Red War Fuel - Warbot Companion'),
(65683, 65677, 1, 'Red War Fuel - Warbot Companion');
