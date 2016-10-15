<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="52708056">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1918381135">
      <_items dataType="Array" type="Duality.Component[]" id="3385743918">
        <item dataType="Struct" type="Duality.Components.Transform" id="2413022988">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">52708056</gameobj>
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
        <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1694874624">
          <active dataType="Bool">true</active>
          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">255</B>
            <G dataType="Byte">255</G>
            <R dataType="Byte">255</R>
          </colorTint>
          <customMat />
          <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
          <gameobj dataType="ObjectRef">52708056</gameobj>
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
        <item dataType="Struct" type="Player.Controller2D" id="2792724721">
          <_x003C_HorizontalRayCount_x003E_k__BackingField dataType="Int">4</_x003C_HorizontalRayCount_x003E_k__BackingField>
          <_x003C_SkinWidth_x003E_k__BackingField dataType="Float">0.015</_x003C_SkinWidth_x003E_k__BackingField>
          <_x003C_VerticalRayCount_x003E_k__BackingField dataType="Int">4</_x003C_VerticalRayCount_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <bounds dataType="Struct" type="Duality.Rect">
            <H dataType="Float">18</H>
            <W dataType="Float">16</W>
            <X dataType="Float">-8</X>
            <Y dataType="Float">-25</Y>
          </bounds>
          <collisions dataType="Struct" type="Player.Controller2D+CollisionInfo" />
          <gameobj dataType="ObjectRef">52708056</gameobj>
          <horizontalRaySpacing dataType="Float">5.99</horizontalRaySpacing>
          <raycastOrigins dataType="Struct" type="Player.Controller2D+RayCastOrigins" />
          <verticalRaySpacing dataType="Float">5.32333326</verticalRaySpacing>
        </item>
        <item dataType="Struct" type="Player.PlayerMovement" id="1204606247">
          <_x003C_AccelerationAirborne_x003E_k__BackingField dataType="Float">100</_x003C_AccelerationAirborne_x003E_k__BackingField>
          <_x003C_AccelerationGrounded_x003E_k__BackingField dataType="Float">100</_x003C_AccelerationGrounded_x003E_k__BackingField>
          <_x003C_JumpHeight_x003E_k__BackingField dataType="Float">45</_x003C_JumpHeight_x003E_k__BackingField>
          <_x003C_MoveSpeed_x003E_k__BackingField dataType="Float">72</_x003C_MoveSpeed_x003E_k__BackingField>
          <_x003C_TimeToJumpApex_x003E_k__BackingField dataType="Float">0.45</_x003C_TimeToJumpApex_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">52708056</gameobj>
          <gravity dataType="Float">444.444458</gravity>
          <jumpVelocity dataType="Float">200</jumpVelocity>
          <spriteRenderer dataType="ObjectRef">1694874624</spriteRenderer>
          <velocity dataType="Struct" type="Duality.Vector2" />
        </item>
      </_items>
      <_size dataType="Int">4</_size>
      <_version dataType="Int">4</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2119679072" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="1255911781">
          <item dataType="Type" id="3041090454" value="Duality.Components.Transform" />
          <item dataType="Type" id="184178394" value="Duality.Components.Renderers.SpriteRenderer" />
          <item dataType="Type" id="1288726582" value="Player.Controller2D" />
          <item dataType="Type" id="3568852474" value="Player.PlayerMovement" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="2252285544">
          <item dataType="ObjectRef">2413022988</item>
          <item dataType="ObjectRef">1694874624</item>
          <item dataType="ObjectRef">2792724721</item>
          <item dataType="ObjectRef">1204606247</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">2413022988</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="1550702255">sgQxYBX/yEamWJy+QpkQog==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">Player</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
