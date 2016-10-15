<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="3571108677">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2921911398">
      <_items dataType="Array" type="Duality.Component[]" id="629761920" length="4">
        <item dataType="Struct" type="Duality.Components.Transform" id="1636456313">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">3571108677</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3" />
          <posAbs dataType="Struct" type="Duality.Vector3" />
          <scale dataType="Float">1</scale>
          <scaleAbs dataType="Float">1</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2338917905">
          <active dataType="Bool">true</active>
          <angularDamp dataType="Float">0.3</angularDamp>
          <angularVel dataType="Float">0</angularVel>
          <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
          <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
          <colFilter />
          <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
          <continous dataType="Bool">false</continous>
          <explicitInertia dataType="Float">0</explicitInertia>
          <explicitMass dataType="Float">0</explicitMass>
          <fixedAngle dataType="Bool">false</fixedAngle>
          <gameobj dataType="ObjectRef">3571108677</gameobj>
          <ignoreGravity dataType="Bool">false</ignoreGravity>
          <joints />
          <linearDamp dataType="Float">0.3</linearDamp>
          <linearVel dataType="Struct" type="Duality.Vector2" />
          <revolutions dataType="Float">0</revolutions>
          <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1564110869">
            <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="129480310">
              <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2306590688">
                <density dataType="Float">1</density>
                <friction dataType="Float">0.3</friction>
                <parent dataType="ObjectRef">2338917905</parent>
                <position dataType="Struct" type="Duality.Vector2" />
                <radius dataType="Float">128</radius>
                <restitution dataType="Float">0.3</restitution>
                <sensor dataType="Bool">false</sensor>
              </item>
            </_items>
            <_size dataType="Int">1</_size>
            <_version dataType="Int">2</_version>
          </shapes>
        </item>
        <item dataType="Struct" type="Behavior.PlayerBullet" id="2513061602">
          <_x003C_BulletLifetime_x003E_k__BackingField dataType="Float">100</_x003C_BulletLifetime_x003E_k__BackingField>
          <_x003C_Creator_x003E_k__BackingField />
          <_x003C_LinearVelocityToSet_x003E_k__BackingField dataType="Struct" type="Duality.Vector2" />
          <_x003C_Speed_x003E_k__BackingField dataType="Float">45</_x003C_Speed_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">3571108677</gameobj>
          <lifetimeCounter dataType="Float">0</lifetimeCounter>
          <player dataType="Struct" type="Duality.GameObject" id="787527030">
            <active dataType="Bool">true</active>
            <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="4176155108">
              <_items dataType="Array" type="Duality.GameObject[]" id="2938089924" length="4" />
              <_size dataType="Int">0</_size>
              <_version dataType="Int">2</_version>
            </children>
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1566825494">
              <_items dataType="Array" type="Duality.Component[]" id="246594478" length="8">
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
                  <_x003C_BulletPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                    <contentPath dataType="String">Data\Prefabs\Bullet.Prefab.res</contentPath>
                  </_x003C_BulletPrefab_x003E_k__BackingField>
                  <_x003C_bulletSpawnOffset_x003E_k__BackingField dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">4</X>
                    <Y dataType="Float">0.1</Y>
                    <Z dataType="Float">-0.1</Z>
                  </_x003C_bulletSpawnOffset_x003E_k__BackingField>
                  <_x003C_facingDirection_x003E_k__BackingField dataType="Enum" type="Player.FacingDirection" name="left" value="0" />
                  <_x003C_FiringDelay_x003E_k__BackingField dataType="Float">300</_x003C_FiringDelay_x003E_k__BackingField>
                  <_x003C_JumpHeight_x003E_k__BackingField dataType="Float">45</_x003C_JumpHeight_x003E_k__BackingField>
                  <_x003C_MoveSpeed_x003E_k__BackingField dataType="Float">72</_x003C_MoveSpeed_x003E_k__BackingField>
                  <_x003C_TimeToJumpApex_x003E_k__BackingField dataType="Float">0.45</_x003C_TimeToJumpApex_x003E_k__BackingField>
                  <active dataType="Bool">true</active>
                  <firingDelayCounter dataType="Float">0</firingDelayCounter>
                  <gameobj dataType="ObjectRef">787527030</gameobj>
                  <gravity dataType="Float">444.444458</gravity>
                  <heldWeapon dataType="Struct" type="Duality.GameObject" id="1343490243">
                    <active dataType="Bool">true</active>
                    <children />
                    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3663037395">
                      <_items dataType="Array" type="Duality.Component[]" id="3476642406" length="4">
                        <item dataType="Struct" type="Duality.Components.Transform" id="3703805175">
                          <active dataType="Bool">true</active>
                          <angle dataType="Float">0</angle>
                          <angleAbs dataType="Float">0</angleAbs>
                          <angleVel dataType="Float">0</angleVel>
                          <angleVelAbs dataType="Float">0</angleVelAbs>
                          <deriveAngle dataType="Bool">true</deriveAngle>
                          <gameobj dataType="ObjectRef">1343490243</gameobj>
                          <ignoreParent dataType="Bool">false</ignoreParent>
                          <parentTransform />
                          <pos dataType="Struct" type="Duality.Vector3">
                            <X dataType="Float">0</X>
                            <Y dataType="Float">0</Y>
                            <Z dataType="Float">-0.1</Z>
                          </pos>
                          <posAbs dataType="Struct" type="Duality.Vector3">
                            <X dataType="Float">0</X>
                            <Y dataType="Float">0</Y>
                            <Z dataType="Float">-0.1</Z>
                          </posAbs>
                          <scale dataType="Float">0.6</scale>
                          <scaleAbs dataType="Float">0.6</scaleAbs>
                          <vel dataType="Struct" type="Duality.Vector3" />
                          <velAbs dataType="Struct" type="Duality.Vector3" />
                        </item>
                        <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2985656811">
                          <active dataType="Bool">true</active>
                          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                            <A dataType="Byte">255</A>
                            <B dataType="Byte">255</B>
                            <G dataType="Byte">255</G>
                            <R dataType="Byte">255</R>
                          </colorTint>
                          <customMat />
                          <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                          <gameobj dataType="ObjectRef">1343490243</gameobj>
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
                            <contentPath dataType="String">Data\Sprites &amp; Spritesheets\heldWeapon.Material.res</contentPath>
                          </sharedMat>
                          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                        </item>
                        <item dataType="Struct" type="Behavior.HeldWeapon" id="971760278">
                          <_x003C_bulletSpawnOffset_x003E_k__BackingField dataType="Struct" type="Duality.Vector3">
                            <X dataType="Float">4</X>
                            <Y dataType="Float">0.1</Y>
                            <Z dataType="Float">-0.1</Z>
                          </_x003C_bulletSpawnOffset_x003E_k__BackingField>
                          <active dataType="Bool">true</active>
                          <BulletPrefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                            <contentPath dataType="String">Data\Prefabs\Bullet.Prefab.res</contentPath>
                          </BulletPrefab>
                          <firingDelay dataType="Float">200</firingDelay>
                          <firingDelayCounter dataType="Float">0</firingDelayCounter>
                          <gameobj dataType="ObjectRef">1343490243</gameobj>
                          <heldWeapon dataType="Struct" type="Misc.Weapon" id="420098650">
                            <_x003C_Accuracy_x003E_k__BackingField dataType="Int">3</_x003C_Accuracy_x003E_k__BackingField>
                            <_x003C_BurstCount_x003E_k__BackingField dataType="Int">1</_x003C_BurstCount_x003E_k__BackingField>
                            <_x003C_ID_x003E_k__BackingField dataType="Int">0</_x003C_ID_x003E_k__BackingField>
                            <_x003C_Range_x003E_k__BackingField dataType="Int">1</_x003C_Range_x003E_k__BackingField>
                            <_x003C_RateOfFire_x003E_k__BackingField dataType="Int">2</_x003C_RateOfFire_x003E_k__BackingField>
                            <_x003C_Slug_x003E_k__BackingField dataType="String">goldenRevolver</_x003C_Slug_x003E_k__BackingField>
                            <_x003C_Sprite_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Texture]]">
                              <contentPath dataType="String">Data\Sprites &amp; Spritesheets\Weapons\goldenRevolver.Texture.res</contentPath>
                            </_x003C_Sprite_x003E_k__BackingField>
                            <_x003C_Title_x003E_k__BackingField dataType="String">Golden Revolver</_x003C_Title_x003E_k__BackingField>
                            <_x003C_TypeOfProjectile_x003E_k__BackingField dataType="Enum" type="Misc.ProjectileType" name="bullet" value="0" />
                          </heldWeapon>
                          <player dataType="ObjectRef">787527030</player>
                          <spriteRenderer dataType="ObjectRef">2985656811</spriteRenderer>
                          <transform dataType="ObjectRef">3703805175</transform>
                          <weaponDatabase dataType="Struct" type="System.Collections.Generic.List`1[[Misc.Weapon]]" id="279763386">
                            <_items dataType="Array" type="Misc.Weapon[]" id="2448335264" length="4">
                              <item dataType="ObjectRef">420098650</item>
                              <item dataType="Struct" type="Misc.Weapon" id="216529628">
                                <_x003C_Accuracy_x003E_k__BackingField dataType="Int">10</_x003C_Accuracy_x003E_k__BackingField>
                                <_x003C_BurstCount_x003E_k__BackingField dataType="Int">5</_x003C_BurstCount_x003E_k__BackingField>
                                <_x003C_ID_x003E_k__BackingField dataType="Int">1</_x003C_ID_x003E_k__BackingField>
                                <_x003C_Range_x003E_k__BackingField dataType="Int">2</_x003C_Range_x003E_k__BackingField>
                                <_x003C_RateOfFire_x003E_k__BackingField dataType="Int">3</_x003C_RateOfFire_x003E_k__BackingField>
                                <_x003C_Slug_x003E_k__BackingField dataType="String">shotgun</_x003C_Slug_x003E_k__BackingField>
                                <_x003C_Sprite_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Texture]]">
                                  <contentPath dataType="String">Data\Sprites &amp; Spritesheets\Weapons\shotgun.Texture.res</contentPath>
                                </_x003C_Sprite_x003E_k__BackingField>
                                <_x003C_Title_x003E_k__BackingField dataType="String">Shotgun</_x003C_Title_x003E_k__BackingField>
                                <_x003C_TypeOfProjectile_x003E_k__BackingField dataType="Enum" type="Misc.ProjectileType" name="bullet" value="0" />
                              </item>
                            </_items>
                            <_size dataType="Int">2</_size>
                            <_version dataType="Int">2</_version>
                          </weaponDatabase>
                          <weaponDatabaseObject dataType="Struct" type="Duality.GameObject" id="2834260959">
                            <active dataType="Bool">true</active>
                            <children />
                            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3087227873">
                              <_items dataType="Array" type="Duality.Component[]" id="691259758" length="4">
                                <item dataType="Struct" type="Manager.WeaponDatabaseManager" id="3611639126">
                                  <_x003C_weaponDatabase_x003E_k__BackingField dataType="ObjectRef">279763386</_x003C_weaponDatabase_x003E_k__BackingField>
                                  <active dataType="Bool">true</active>
                                  <gameobj dataType="ObjectRef">2834260959</gameobj>
                                </item>
                              </_items>
                              <_size dataType="Int">1</_size>
                              <_version dataType="Int">9</_version>
                            </compList>
                            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1063206944" surrogate="true">
                              <header />
                              <body>
                                <keys dataType="Array" type="System.Object[]" id="731669611">
                                  <item dataType="Type" id="97972854" value="Manager.WeaponDatabaseManager" />
                                </keys>
                                <values dataType="Array" type="System.Object[]" id="3369027784">
                                  <item dataType="ObjectRef">3611639126</item>
                                </values>
                              </body>
                            </compMap>
                            <compTransform />
                            <identifier dataType="Struct" type="System.Guid" surrogate="true">
                              <header>
                                <data dataType="Array" type="System.Byte[]" id="2192428385">biwph8Z5kk+28lYMuemNIw==</data>
                              </header>
                              <body />
                            </identifier>
                            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                            <name dataType="String">WorldManagers</name>
                            <parent />
                            <prefabLink />
                          </weaponDatabaseObject>
                          <weaponOffset dataType="Struct" type="Duality.Vector2">
                            <X dataType="Float">6</X>
                            <Y dataType="Float">3</Y>
                          </weaponOffset>
                        </item>
                      </_items>
                      <_size dataType="Int">3</_size>
                      <_version dataType="Int">9</_version>
                    </compList>
                    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3764371064" surrogate="true">
                      <header />
                      <body>
                        <keys dataType="Array" type="System.Object[]" id="2235246777">
                          <item dataType="Type" id="831968974" value="Duality.Components.Transform" />
                          <item dataType="Type" id="67832650" value="Duality.Components.Renderers.SpriteRenderer" />
                          <item dataType="Type" id="1269453950" value="Behavior.HeldWeapon" />
                        </keys>
                        <values dataType="Array" type="System.Object[]" id="2773592832">
                          <item dataType="ObjectRef">3703805175</item>
                          <item dataType="ObjectRef">2985656811</item>
                          <item dataType="ObjectRef">971760278</item>
                        </values>
                      </body>
                    </compMap>
                    <compTransform dataType="ObjectRef">3703805175</compTransform>
                    <identifier dataType="Struct" type="System.Guid" surrogate="true">
                      <header>
                        <data dataType="Array" type="System.Byte[]" id="3144474939">A0P5xu17sEuEt+3rLf8XcA==</data>
                      </header>
                      <body />
                    </identifier>
                    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                    <name dataType="String">Weapon</name>
                    <parent />
                    <prefabLink />
                  </heldWeapon>
                  <jumpVelocity dataType="Float">200</jumpVelocity>
                  <spriteRenderer dataType="ObjectRef">2429693598</spriteRenderer>
                  <velocity dataType="Struct" type="Duality.Vector2" />
                </item>
                <item dataType="Struct" type="Behavior.EntityStats" id="1425810874">
                  <_x003C_CurrentHealth_x003E_k__BackingField dataType="Int">8</_x003C_CurrentHealth_x003E_k__BackingField>
                  <_x003C_MaxHealth_x003E_k__BackingField dataType="Int">8</_x003C_MaxHealth_x003E_k__BackingField>
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">787527030</gameobj>
                </item>
              </_items>
              <_size dataType="Int">5</_size>
              <_version dataType="Int">17</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3282221024" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1783262984">
                  <item dataType="ObjectRef">831968974</item>
                  <item dataType="ObjectRef">67832650</item>
                  <item dataType="Type" id="835705708" value="Player.Controller2D" />
                  <item dataType="Type" id="3075574838" value="Player.PlayerController" />
                  <item dataType="Type" id="1316085304" value="Behavior.EntityStats" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="2001332190">
                  <item dataType="ObjectRef">3147841962</item>
                  <item dataType="ObjectRef">2429693598</item>
                  <item dataType="ObjectRef">3527543695</item>
                  <item dataType="ObjectRef">1575548244</item>
                  <item dataType="ObjectRef">1425810874</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3147841962</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1198805236">UPF8jIwOT0SjSKyQzVYuaQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Player</name>
            <parent />
            <prefabLink />
          </player>
          <playerController dataType="ObjectRef">1575548244</playerController>
          <rigidBody dataType="ObjectRef">2338917905</rigidBody>
          <transform dataType="ObjectRef">1636456313</transform>
        </item>
      </_items>
      <_size dataType="Int">3</_size>
      <_version dataType="Int">3</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3423913786" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="992538580">
          <item dataType="ObjectRef">831968974</item>
          <item dataType="Type" id="3785075940" value="Duality.Components.Physics.RigidBody" />
          <item dataType="Type" id="556527126" value="Behavior.PlayerBullet" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="2242204598">
          <item dataType="ObjectRef">1636456313</item>
          <item dataType="ObjectRef">2338917905</item>
          <item dataType="ObjectRef">2513061602</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">1636456313</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="2465193712">t4ukon66MUCBA8xOG6GDww==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">Bullet</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
