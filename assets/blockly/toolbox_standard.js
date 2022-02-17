
var BLOCKLY_TOOLBOX_XML = BLOCKLY_TOOLBOX_XML || Object.create(null);

/* BEGINNING BLOCKLY_TOOLBOX_XML ASSIGNMENT. DO NOT EDIT. USE BLOCKLY DEVTOOLS. */
BLOCKLY_TOOLBOX_XML['standard'] =
// From XML string/file, replace ^\s?(\s*)?(<.*>)$ with \+$1'$2'
// Tweak first and last line.
'<xml xmlns="https://developers.google.com/blockly/xml">'
+ '<category name="Motion" colour="#a7a8aa">'
+   '<block type="movebotforward">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">Fast</field>'
+    '<value name="moveForward">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="movebotbackwards">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">slowSpeed</field>'
+    '<value name="moveBackwards">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnbotleft">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">slowSpeed</field>'
+    '<value name="turnBotLeft">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnbotright">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">slowSpeed</field>'
+    '<value name="turnBotRight">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnbotleftdegrees">'
+    '<field name="degrees">90</field>'
+    '<field name="botSpeed">slowSpeed</field>'
+    '<value name="turnBotLeftDegrees">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnbotrightdegrees">'
+    '<field name="degrees">90</field>'
+    '<field name="botSpeed">slowSpeed</field>'
+    '<value name="turnBotRightDegrees">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="spinbotleft">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">slowSpeed</field>'
+    '<value name="spinBotLeft">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="spinbotright">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">slowSpeed</field>'
+    '<value name="spinBotRight">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="spinbotleftdegrees">'
+    '<field name="degrees">90</field>'
+    '<field name="botSpeed">slowSpeed</field>'
+    '<value name="spinBotLeftDegrees">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="spinbotrightdegrees">'
+    '<field name="degrees">90</field>'
+    '<field name="botSpeed">slowSpeed</field>'
+    '<value name="spinBotRightDegrees">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+ '</category>'
+ '<category name="Circuit" colour="#00aeef">'
+   '<block type="turnd1onkliks">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">Fast</field>'
+    '<value name="turnD1OnKliks">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnd2onkliks">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">Fast</field>'
+    '<value name="turnD2OnKliks">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnd3onkliks">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">Fast</field>'
+    '<value name="turnD3OnKliks">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnd4onkliks">'
+    '<field name="duration">10</field>'
+    '<field name="botSpeed">Fast</field>'
+    '<value name="turnD4OnKliks">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnaonkliks">'
+    '<field name="duration">10</field>'
+    '<value name="turnAOnKliks">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnd1ontoggle">'
+    '<field name="toggleOn">TRUE</field>'
+    '<field name="botSpeed">Fast</field>'
+    '<value name="turnD1OnToggle">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnd2ontoggle">'
+    '<field name="toggleOn">TRUE</field>'
+    '<field name="botSpeed">Fast</field>'
+    '<value name="turnD2OnToggle">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnd3ontoggle">'
+    '<field name="toggleOn">TRUE</field>'
+    '<field name="botSpeed">Fast</field>'
+    '<value name="turnD3OnToggle">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnd4ontoggle">'
+    '<field name="toggleOn">TRUE</field>'
+    '<field name="botSpeed">Fast</field>'
+    '<value name="turnD4OnToggle">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+   '<block type="turnaontoggle">'
+    '<field name="toggleOn">TRUE</field>'
+    '<value name="turnAOnToggle">'
+     '<shadow type="allcircuit"></shadow>'
+    '</value>'
+   '</block>'
+ '</category>'
+ '<category name="Control" colour="#5f2167">'
+   '<block type="controls_repeat_ext">'
+    '<value name="TIMES">'
+     '<shadow type="math_number">'
+      '<field name="NUM">10</field>'
+     '</shadow>'
+    '</value>'
+   '</block>'
+   '<block type="repeatforever"></block>'
+   '<block type="wait">'
+    '<field name="duration">10</field>'
+   '</block>'
+ '</category>'
+ '<category name="SC Controllers" custom = "MEEPERS" colour="#44d62c">'
+   '<block type="bot">'
+    '<field name="NAME">OPTIONNAME</field>'
+    '<mutation bots="0"></mutation>'
+   '</block>'
//<block type="allbots"></block>
//<block type="circuit"></block>
//<block type="allcircuit"></block>
+ '</category>'
/*
<!--<category name="Motor" colour="#a5935b">
<block type="spinleftmotorforward">
<field name="duration">10</field>
<field name="botSpeed">Fast</field>
<value name="spinLeftMotorForward">
<shadow type="allmotor"></shadow>
</value>
</block>
<block type="spinleftmotorreverse">
<field name="duration">10</field>
<field name="botSpeed">Fast</field>
<value name="spinLeftMotorReverse">
<shadow type="allmotor"></shadow>
</value>
</block>
<block type="spinrightmotorreverse">
<field name="duration">10</field>
<field name="botSpeed">Fast</field>
<value name="spinrightmotorreverse">
<shadow type="allmotor"></shadow>
</value>
</block>
<block type="spinrightmotorforward">
<field name="duration">10</field>
<field name="botSpeed">Fast</field>
<value name="spinrightmotorforward">
<shadow type="allmotor"></shadow>
</value>
</block>
</category>-->

<category name="Bots" colour="#a5935b">
<block type="bot"></block>
<block type="allbots"></block>
<!--<block type="circuit"></block>
<block type="allcircuit"></block>-->
</category>*/
+ '</xml>';
/* END BLOCKLY_TOOLBOX_XML ASSIGNMENT. DO NOT EDIT. */
