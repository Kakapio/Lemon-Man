<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="3615758245">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2484729798">
      <_items dataType="Array" type="Duality.Component[]" id="165872896" length="4">
        <item dataType="Struct" type="Duality.Components.Transform" id="1681105881">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">3615758245</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">-1</Z>
          </pos>
          <posAbs dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">-1</Z>
          </posAbs>
          <scale dataType="Float">0.6</scale>
          <scaleAbs dataType="Float">0.6</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="962957517">
          <active dataType="Bool">true</active>
          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">255</B>
            <G dataType="Byte">255</G>
            <R dataType="Byte">255</R>
          </colorTint>
          <customMat />
          <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
          <gameobj dataType="ObjectRef">3615758245</gameobj>
          <offset dataType="Int">0</offset>
          <pixelGrid dataType="Bool">false</pixelGrid>
          <rect dataType="Struct" type="Duality.Rect">
            <H dataType="Float">8</H>
            <W dataType="Float">12</W>
            <X dataType="Float">-6</X>
            <Y dataType="Float">-4</Y>
          </rect>
          <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
            <contentPath dataType="String">Data\Sprites &amp; Spritesheets\Weapons\GoldenRevolver.Material.res</contentPath>
          </sharedMat>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
        <item dataType="Struct" type="Behavior.Weapon" id="3861534947">
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">3615758245</gameobj>
          <player dataType="Struct" type="Duality.GameObject" id="787527030">
            <active dataType="Bool">true</active>
            <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="880121963">
              <_items dataType="Array" type="Duality.GameObject[]" id="3105079926" length="4" />
              <_size dataType="Int">0</_size>
              <_version dataType="Int">2</_version>
            </children>
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="993884360">
              <_items dataType="Array" type="Duality.Component[]" id="3199431873" length="8">
                <item dataType="Struct" type="Duality.Components.Transform" id="3147841962">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">787527030</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">-16</Y>
                    <Z dataType="Float">0</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">-16</Y>
                    <Z dataType="Float">0</Z>
                  </posAbs>
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2429693598">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <customMat />
                  <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                  <gameobj dataType="ObjectRef">787527030</gameobj>
                  <offset dataType="Int">0</offset>
                  <pixelGrid dataType="Bool">false</pixelGrid>
                  <rect dataType="Struct" type="Duality.Rect">
                    <H dataType="Float">18</H>
                    <W dataType="Float">16</W>
                    <X dataType="Float">-8</X>
                    <Y dataType="Float">-9</Y>
                  </rect>
                  <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
                  <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                    <contentPath dataType="String">Data\Sprites &amp; Spritesheets\TrumpStill.Material.res</contentPath>
                  </sharedMat>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
                <item dataType="Struct" type="Player.Controller2D" id="3527543695">
                  <_x003C_HorizontalRayCount_x003E_k__BackingField dataType="Int">3</_x003C_HorizontalRayCount_x003E_k__BackingField>
                  <_x003C_SkinWidth_x003E_k__BackingField dataType="Float">0.015</_x003C_SkinWidth_x003E_k__BackingField>
                  <_x003C_VerticalRayCount_x003E_k__BackingField dataType="Int">3</_x003C_VerticalRayCount_x003E_k__BackingField>
                  <active dataType="Bool">true</active>
                  <bounds dataType="Struct" type="Duality.Rect">
                    <H dataType="Float">18</H>
                    <W dataType="Float">16</W>
                    <X dataType="Float">-8</X>
                    <Y dataType="Float">-25</Y>
                  </bounds>
                  <collisions dataType="Struct" type="Player.Controller2D+CollisionInfo" />
                  <gameobj dataType="ObjectRef">787527030</gameobj>
                  <horizontalRaySpacing dataType="Float">8.985</horizontalRaySpacing>
                  <raycastOrigins dataType="Struct" type="Player.Controller2D+RayCastOrigins" />
                  <verticalRaySpacing dataType="Float">7.985</verticalRaySpacing>
                </item>
                <item dataType="Struct" type="Player.PlayerController" id="1575548244">
                  <_x003C_AccelerationAirborne_x003E_k__BackingField dataType="Float">100</_x003C_AccelerationAirborne_x003E_k__BackingField>
                  <_x003C_AccelerationGrounded_x003E_k__BackingField dataType="Float">100</_x003C_AccelerationGrounded_x003E_k__BackingField>
                  <_x003C_JumpHeight_x003E_k__BackingField dataType="Float">45</_x003C_JumpHeight_x003E_k__BackingField>
                  <_x003C_MoveSpeed_x003E_k__BackingField dataType="Float">72</_x003C_MoveSpeed_x003E_k__BackingField>
                  <_x003C_TimeToJumpApex_x003E_k__BackingField dataType="Float">0.45</_x003C_TimeToJumpApex_x003E_k__BackingField>
                  <active dataType="Bool">true</active>
                  <facingDirection dataType="Enum" type="Player.FacingDirection" name="left" value="0" />
                  <gameobj dataType="ObjectRef">787527030</gameobj>
                  <gravity dataType="Float">444.444458</gravity>
                  <jumpVelocity dataType="Float">200</jumpVelocity>
                  <spriteRenderer dataType="ObjectRef">2429693598</spriteRenderer>
                  <velocity dataType="Struct" type="Duality.Vector2" />
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">16</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1006475617" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2891978372">
                  <item dataType="Type" id="1056146500" value="Duality.Components.Transform" />
                  <item dataType="Type" id="3260247702" value="Duality.Components.Renderers.SpriteRenderer" />
                  <item dataType="Type" id="523031040" value="Player.Controller2D" />
                  <item dataType="Type" id="3320797730" value="Player.PlayerController" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="2109229206">
                  <item dataType="ObjectRef">3147841962</item>
                  <item dataType="ObjectRef">2429693598</item>
                  <item dataType="ObjectRef">3527543695</item>
                  <item dataType="ObjectRef">1575548244</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3147841962</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="4075498048">UPF8jIwOT0SjSKyQzVYuaQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Player</name>
            <parent />
            <prefabLink />
          </player>
          <spriteRenderer dataType="ObjectRef">962957517</spriteRenderer>
          <transform dataType="ObjectRef">1681105881</transform>
          <weaponOffset dataType="Struct" type="Duality.Vector2">
            <X dataType="Float">6</X>
            <Y dataType="Float">-13</Y>
          </weaponOffset>
        </item>
      </_items>
      <_size dataType="Int">3</_size>
      <_version dataType="Int">3</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1383295674" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="404745780">
          <item dataType="ObjectRef">1056146500</item>
          <item dataType="ObjectRef">3260247702</item>
          <item dataType="Type" id="1796664484" value="Behavior.Weapon" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="303545078">
          <item dataType="ObjectRef">1681105881</item>
          <item dataType="ObjectRef">962957517</item>
          <item dataType="ObjectRef">3861534947</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">1681105881</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="3523397008">JVEYh5yRf0aEbMHSJ/VW/w==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">Weapon</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
