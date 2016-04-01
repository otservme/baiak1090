<?xml version="1.0" encoding="UTF-8"?>
  <monster name="Kronos" nameDescription="a kronos" race="fire" experience="6000000" speed="100" manacost="0">
    <health now="400650" max="400650"/>
	<look type="304" head="0" body="0" legs="0" feet="0" corpse="9801"/>
  	<targetchange interval="5000" chance="8"/>
  	<strategy attack="100" defense="0"/>
  	<flags>
  	  <flag summonable="0"/>
  	  <flag attackable="1"/>
  	  <flag hostile="1"/>
  	  <flag illusionable="1"/>
  	  <flag convinceable="0"/>
    	<flag pushable="0"/>
    	<flag canpushitems="1"/>
    	<flag canpushcreatures="1"/>
    	<flag targetdistance="1"/>
    	<flag staticattack="90"/>
    	<flag runonhealth="0"/>
  	</flags>
	<attacks>
                <attack name="melee" interval="10" skill="499" attack="499"/>
		<attack name="fire" interval="500" chance="15" range="7" radius="7" target="1" min="-1000" max="-15000">
		<attack name="mort attack" interval="200" chance="15" range="7" radius="7" target="1" min="-10000" max="-25000">
			<attribute key="shootEffect" value="fire"/>
			<attribute key="areaEffect" value="firearea"/>
		</attack>
	</attacks>
  <defenses armor="15" defense="15">
    <defense name="healing" interval="1000" chance="1000" min="2500" max="5000">
      <attribute key="areaEffect" value="blueshimmer"/>
    </defense>
  </defenses>
  	<elements>
		<element energyPercent="15"/>
		<element icePercent="10"/>
		<element firePercent="-15"/>
	</elements>
  <immunities>
    <immunity fire="1"/>
    <immunity paralyze="1"/>
    <immunity invisible="1"/>
  </immunities>
  <voices interval="2000" chance="10">
    <voice sentence="Kronos!"/>
    <voice sentence="Vem pra ca Zeus meu filho..."/>
    <voice sentence="You Are Dead!!"/>
    <voice sentence="Vou escravizar a humanidade!"/>
    <voice sentence="Hades, Zeus e Poseidon voces irao morrer!"/>

  <summons maxSummons="3">
    <summon name="Fire Elemetal" interval="10" chance="1000"/>
    <summon name="Fire Elemetal" interval="10" chance="1000"/>
  </summons>


  </voices>
  <loot>
    <item id="9971" countmax="20" chance1="15" chancemax="20"/>
    <item id="2472" countmax="1" chance1="99000" chancemax="10000"/>
    <item id="2522" countmax="1" chance1="99000" chancemax="10000"/>
    <item id="2470" countmax="1" chance1="99000" chancemax="10000"/>
    <item id="2514" countmax="1" chance1="99000" chancemax="10000"/>
  </loot>
</monster>