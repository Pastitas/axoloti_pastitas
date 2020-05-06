<patch-1.0 appVersion="1.0.12">
   <obj type="drj/math/== const i" uuid="36ae23539d64bc2fb798a1b4a65cf9dda17a1952" name="==_1" x="210" y="28">
      <params/>
      <attribs>
         <spinner attributeName="value" value="26"/>
      </attribs>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="406" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="deadsy/input/debounce1" uuid="dd7c32f9-81e3-4570-bea6-1e87c04029ed" name="debounce1_1" x="532" y="28">
      <params/>
      <attribs>
         <spinner attributeName="period" value="3"/>
         <combo attributeName="mode" selection="fast 0 to 1"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="trig" x="742" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/math/== const i" uuid="36ae23539d64bc2fb798a1b4a65cf9dda17a1952" name="==_3" x="210" y="98">
      <params/>
      <attribs>
         <spinner attributeName="value" value="32"/>
      </attribs>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_2" x="406" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="deadsy/input/debounce1" uuid="dd7c32f9-81e3-4570-bea6-1e87c04029ed" name="debounce1_2" x="532" y="112">
      <params/>
      <attribs>
         <spinner attributeName="period" value="3"/>
         <combo attributeName="mode" selection="fast 0 to 1"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="dir" x="742" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="GPIO_in" x="42" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_1" x="126" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/math/== const i" uuid="36ae23539d64bc2fb798a1b4a65cf9dda17a1952" name="forw" x="210" y="168">
      <params/>
      <attribs>
         <spinner attributeName="value" value="44"/>
      </attribs>
   </obj>
   <obj type="deadsy/input/debounce1" uuid="dd7c32f9-81e3-4570-bea6-1e87c04029ed" name="debounce1_3" x="532" y="196">
      <params/>
      <attribs>
         <spinner attributeName="period" value="3"/>
         <combo attributeName="mode" selection="fast 0 to 1"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="mom" x="742" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/math/== const i" uuid="36ae23539d64bc2fb798a1b4a65cf9dda17a1952" name="==_4" x="210" y="238">
      <params/>
      <attribs>
         <spinner attributeName="value" value="0"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="==_1" outlet="out"/>
         <dest obj="or_1" inlet="i1"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="==_3" outlet="out"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="debounce1_1" inlet="i0"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="debounce1_2" inlet="i0"/>
      </net>
      <net>
         <source obj="round_1" outlet="out"/>
         <dest obj="==_1" inlet="in"/>
         <dest obj="forw" inlet="in"/>
         <dest obj="==_3" inlet="in"/>
         <dest obj="==_4" inlet="in"/>
      </net>
      <net>
         <source obj="debounce1_1" outlet="o0"/>
         <dest obj="trig" inlet="outlet"/>
      </net>
      <net>
         <source obj="debounce1_2" outlet="o0"/>
         <dest obj="dir" inlet="outlet"/>
      </net>
      <net>
         <source obj="forw" outlet="out"/>
         <dest obj="or_2" inlet="i2"/>
      </net>
      <net>
         <source obj="debounce1_3" outlet="o0"/>
         <dest obj="mom" inlet="outlet"/>
      </net>
      <net>
         <source obj="==_4" outlet="out"/>
         <dest obj="debounce1_3" inlet="i0"/>
      </net>
      <net>
         <source obj="GPIO_in" outlet="inlet"/>
         <dest obj="round_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>640</x>
      <y>28</y>
      <width>1280</width>
      <height>1025</height>
   </windowPos>
</patch-1.0>