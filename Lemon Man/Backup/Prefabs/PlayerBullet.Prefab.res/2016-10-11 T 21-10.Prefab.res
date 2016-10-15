<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="2449894375">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1311109196">
      <_items dataType="Array" type="Duality.Component[]" id="430763940">
        <item dataType="Struct" type="Duality.Components.Transform" id="515242011">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">2449894375</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3" />
          <posAbs dataType="Struct" type="Duality.Vector3" />
          <scale dataType="Float">0.5</scale>
          <scaleAbs dataType="Float">0.5</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="4092060943">
          <active dataType="Bool">true</active>
          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">255</B>
            <G dataType="Byte">255</G>
            <R dataType="Byte">255</R>
          </colorTint>
          <customMat />
          <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
          <gameobj dataType="ObjectRef">2449894375</gameobj>
          <offset dataType="Int">0</offset>
          <pixelGrid dataType="Bool">false</pixelGrid>
          <rect dataType="Struct" type="Duality.Rect">
            <H dataType="Float">4</H>
            <W dataType="Float">4</W>
            <X dataType="Float">-2</X>
            <Y dataType="Float">-2</Y>
          </rect>
          <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
            <contentPath dataType="String">Data\Sprites &amp; Spritesheets\Weapons\bullet.Material.res</contentPath>
          </sharedMat>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
        <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1217703603">
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
          <gameobj dataType="ObjectRef">2449894375</gameobj>
          <ignoreGravity dataType="Bool">true</ignoreGravity>
          <joints />
          <linearDamp dataType="Float">0.3</linearDamp>
          <linearVel dataType="Struct" type="Duality.Vector2" />
          <revolutions dataType="Float">0</revolutions>
          <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="329128159">
            <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3620193902">
              <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2748462672">
                <density dataType="Float">1</density>
                <friction dataType="Float">0.3</friction>
                <parent dataType="ObjectRef">1217703603</parent>
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
        <item dataType="Struct" type="Behavior.PlayerBullet" id="1391847300">
          <_x003C_BulletLifetime_x003E_k__BackingField dataType="Float">6</_x003C_BulletLifetime_x003E_k__BackingField>
          <_x003C_Creator_x003E_k__BackingField dataType="Struct" type="Duality.GameObject" id="787527030">
            <active dataType="Bool">true</active>
            <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2912098222">
              <_items dataType="Array" type="Duality.GameObject[]" id="2482753872" length="4" />
              <_size dataType="Int">0</_size>
              <_version dataType="Int">2</_version>
            </children>
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2657851082">
              <_items dataType="Array" type="Duality.Component[]" id="1473058348" length="8">
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
                    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="146561023">
                      <_items dataType="Array" type="Duality.Component[]" id="3578713902" length="4">
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
                            <contentPath dataType="String">Data\Prefabs\PlayerBullet.Prefab.res</contentPath>
                          </BulletPrefab>
                          <firingDelay dataType="Float">200</firingDelay>
                          <firingDelayCounter dataType="Float">0</firingDelayCounter>
                          <gameobj dataType="ObjectRef">1343490243</gameobj>
                          <heldWeapon dataType="Struct" type="Misc.Weapon" id="3012142634">
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
                          <weaponDatabase dataType="Struct" type="System.Collections.Generic.List`1[[Misc.Weapon]]" id="2490247130">
                            <_items dataType="Array" type="Misc.Weapon[]" id="301259024" length="4">
                              <item dataType="ObjectRef">3012142634</item>
                              <item dataType="Struct" type="Misc.Weapon" id="3876170556">
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
                            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="702689521">
                              <_items dataType="Array" type="Duality.Component[]" id="3731658670" length="4">
                                <item dataType="Struct" type="Manager.WeaponDatabaseManager" id="3611639126">
                                  <_x003C_weaponDatabase_x003E_k__BackingField dataType="ObjectRef">2490247130</_x003C_weaponDatabase_x003E_k__BackingField>
                                  <active dataType="Bool">true</active>
                                  <gameobj dataType="ObjectRef">2834260959</gameobj>
                                </item>
                              </_items>
                              <_size dataType="Int">1</_size>
                              <_version dataType="Int">9</_version>
                            </compList>
                            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4289291232" surrogate="true">
                              <header />
                              <body>
                                <keys dataType="Array" type="System.Object[]" id="2718713179">
                                  <item dataType="Type" id="255663510" value="Manager.WeaponDatabaseManager" />
                                </keys>
                                <values dataType="Array" type="System.Object[]" id="2365566056">
                                  <item dataType="ObjectRef">3611639126</item>
                                </values>
                              </body>
                            </compMap>
                            <compTransform />
                            <identifier dataType="Struct" type="System.Guid" surrogate="true">
                              <header>
                                <data dataType="Array" type="System.Byte[]" id="1060188305">biwph8Z5kk+28lYMuemNIw==</data>
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
                    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3126324576" surrogate="true">
                      <header />
                      <body>
                        <keys dataType="Array" type="System.Object[]" id="461880373">
                          <item dataType="Type" id="4130808310" value="Duality.Components.Transform" />
                          <item dataType="Type" id="4218706970" value="Duality.Components.Renderers.SpriteRenderer" />
                          <item dataType="Type" id="1248092950" value="Behavior.HeldWeapon" />
                        </keys>
                        <values dataType="Array" type="System.Object[]" id="1609927240">
                          <item dataType="ObjectRef">3703805175</item>
                          <item dataType="ObjectRef">2985656811</item>
                          <item dataType="ObjectRef">971760278</item>
                        </values>
                      </body>
                    </compMap>
                    <compTransform dataType="ObjectRef">3703805175</compTransform>
                    <identifier dataType="Struct" type="System.Guid" surrogate="true">
                      <header>
                        <data dataType="Array" type="System.Byte[]" id="2332992895">A0P5xu17sEuEt+3rLf8XcA==</data>
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
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1180397854" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3378523936">
                  <item dataType="ObjectRef">4130808310</item>
                  <item dataType="ObjectRef">4218706970</item>
                  <item dataType="Type" id="3828625372" value="Player.Controller2D" />
                  <item dataType="Type" id="11499798" value="Player.PlayerController" />
                  <item dataType="Type" id="1238911304" value="Behavior.EntityStats" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="3118729102">
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
                <data dataType="Array" type="System.Byte[]" id="1087687228">UPF8jIwOT0SjSKyQzVYuaQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Player</name>
            <parent />
            <prefabLink />
          </_x003C_Creator_x003E_k__BackingField>
          <_x003C_LinearVelocityToSet_x003E_k__BackingField dataType="Struct" type="Duality.Vector2" />
          <_x003C_Speed_x003E_k__BackingField dataType="Float">5</_x003C_Speed_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">2449894375</gameobj>
          <lifetimeCounter dataType="Float">0</lifetimeCounter>
          <player dataType="ObjectRef">787527030</player>
          <playerController dataType="ObjectRef">1575548244</playerController>
          <rigidBody dataType="ObjectRef">1217703603</rigidBody>
          <transform dataType="ObjectRef">515242011</transform>
        </item>
      </_items>
      <_size dataType="Int">4</_size>
      <_version dataType="Int">4</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1895286262" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="1757867462">
          <item dataType="ObjectRef">4130808310</item>
          <item dataType="ObjectRef">4218706970</item>
          <item dataType="Type" id="1998306560" value="Duality.Components.Physics.RigidBody" />
          <item dataType="Type" id="3317354958" value="Behavior.PlayerBullet" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="2688811706">
          <item dataType="ObjectRef">515242011</item>
          <item dataType="ObjectRef">4092060943</item>
          <item dataType="ObjectRef">1217703603</item>
          <item dataType="ObjectRef">1391847300</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">515242011</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="65705670">3y9VQVOe60SjEE3eySij0w==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">PlayerBullet</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
