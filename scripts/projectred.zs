recipes.remove(<ProjRed|Expansion:projectred.expansion.battery>);

val nikoliteDust = <ore:dustElectrotine>;
val tinIngot = <ore:ingotTin>;
val copperIngot = <ore:ingotCopper>;

recipes.addShaped(<ProjRed|Expansion:projectred.expansion.battery>,
    [
        [nikoliteDust, tinIngot, nikoliteDust],
        [nikoliteDust, copperIngot, nikoliteDust],
        [nikoliteDust, tinIngot, nikoliteDust]
    ]);