<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">50</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2511523052">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2647580066">
        <_items dataType="Array" type="Duality.Component[]" id="178379024">
          <item dataType="Struct" type="Duality.Components.Transform" id="576870688">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2511523052</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-300</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-300</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="3048798859">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">2511523052</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="4189425567">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="2743093614" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2592933968">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3724855662">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </passes>
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
          <item dataType="Struct" type="Duality.Components.SoundListener" id="3165004423">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2511523052</gameobj>
          </item>
          <item dataType="Struct" type="Camera.CameraFollow" id="1051768081">
            <_x003C_zoomLevel_x003E_k__BackingField dataType="Int">-125</_x003C_zoomLevel_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2511523052</gameobj>
            <player dataType="Struct" type="Duality.GameObject" id="787527030">
              <active dataType="Bool">true</active>
              <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="3740027105">
                <_items dataType="Array" type="Duality.GameObject[]" id="3062691694" length="4" />
                <_size dataType="Int">0</_size>
                <_version dataType="Int">2</_version>
              </children>
              <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2174773792">
                <_items dataType="Array" type="Duality.Component[]" id="330374507" length="8">
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
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2979811677">
                        <_items dataType="Array" type="Duality.Component[]" id="585125222" length="4">
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
                            <heldWeapon dataType="Struct" type="Misc.Weapon" id="1572667994">
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
                            <weaponDatabase dataType="Struct" type="System.Collections.Generic.List`1[[Misc.Weapon]]" id="3909605818">
                              <_items dataType="Array" type="Misc.Weapon[]" id="2414129568" length="4">
                                <item dataType="ObjectRef">1572667994</item>
                                <item dataType="Struct" type="Misc.Weapon" id="1125563100">
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
                              <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2188069857">
                                <_items dataType="Array" type="Duality.Component[]" id="519276910" length="4">
                                  <item dataType="Struct" type="Manager.WeaponDatabaseManager" id="3611639126">
                                    <_x003C_weaponDatabase_x003E_k__BackingField dataType="ObjectRef">3909605818</_x003C_weaponDatabase_x003E_k__BackingField>
                                    <active dataType="Bool">true</active>
                                    <gameobj dataType="ObjectRef">2834260959</gameobj>
                                  </item>
                                </_items>
                                <_size dataType="Int">1</_size>
                                <_version dataType="Int">9</_version>
                              </compList>
                              <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4115005472" surrogate="true">
                                <header />
                                <body>
                                  <keys dataType="Array" type="System.Object[]" id="3734500459">
                                    <item dataType="Type" id="39072374" value="Manager.WeaponDatabaseManager" />
                                  </keys>
                                  <values dataType="Array" type="System.Object[]" id="4092758216">
                                    <item dataType="ObjectRef">3611639126</item>
                                  </values>
                                </body>
                              </compMap>
                              <compTransform />
                              <identifier dataType="Struct" type="System.Guid" surrogate="true">
                                <header>
                                  <data dataType="Array" type="System.Byte[]" id="1016536417">biwph8Z5kk+28lYMuemNIw==</data>
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
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4248738168" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="4009597495">
                            <item dataType="Type" id="2122741390" value="Duality.Components.Transform" />
                            <item dataType="Type" id="3652497482" value="Duality.Components.Renderers.SpriteRenderer" />
                            <item dataType="Type" id="757011902" value="Behavior.HeldWeapon" />
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="4040430144">
                            <item dataType="ObjectRef">3703805175</item>
                            <item dataType="ObjectRef">2985656811</item>
                            <item dataType="ObjectRef">971760278</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">3703805175</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="3407604757">A0P5xu17sEuEt+3rLf8XcA==</data>
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
              <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="200955507" surrogate="true">
                <header />
                <body>
                  <keys dataType="Array" type="System.Object[]" id="4117914532">
                    <item dataType="ObjectRef">2122741390</item>
                    <item dataType="ObjectRef">3652497482</item>
                    <item dataType="Type" id="533349572" value="Player.Controller2D" />
                    <item dataType="Type" id="4154674070" value="Player.PlayerController" />
                    <item dataType="Type" id="808633728" value="Behavior.EntityStats" />
                  </keys>
                  <values dataType="Array" type="System.Object[]" id="1922096918">
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
                  <data dataType="Array" type="System.Byte[]" id="3123626656">UPF8jIwOT0SjSKyQzVYuaQ==</data>
                </header>
                <body />
              </identifier>
              <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
              <name dataType="String">Player</name>
              <parent />
              <prefabLink />
            </player>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="81641738" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3606603832">
            <item dataType="ObjectRef">2122741390</item>
            <item dataType="Type" id="3815977580" value="Duality.Components.Camera" />
            <item dataType="Type" id="605605942" value="Duality.Components.SoundListener" />
            <item dataType="Type" id="2748295992" value="Camera.CameraFollow" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1649367774">
            <item dataType="ObjectRef">576870688</item>
            <item dataType="ObjectRef">3048798859</item>
            <item dataType="ObjectRef">3165004423</item>
            <item dataType="ObjectRef">1051768081</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">576870688</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4262995556">S42dOS8++kGkGJLsYQCCXQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="13729924">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1271375162">
        <_items dataType="Array" type="Duality.Component[]" id="1424437504" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="2374044856">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">13729924</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">12</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">12</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1655896492">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">13729924</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">16</H>
              <W dataType="Float">160</W>
              <X dataType="Float">-80</X>
              <Y dataType="Float">-8</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Sprites &amp; Spritesheets\Platform.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3076506448">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">13729924</gameobj>
            <ignoreGravity dataType="Bool">true</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2" />
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="31240448">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2961683100" length="4">
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2427157444">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3076506448</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="551759172">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-80</X>
                      <Y dataType="Float">-8</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">80</X>
                      <Y dataType="Float">-8</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">80</X>
                      <Y dataType="Float">8</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-80</X>
                      <Y dataType="Float">8</Y>
                    </item>
                  </vertices>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
              <_version dataType="Int">7</_version>
            </shapes>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2873476794" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1239920256">
            <item dataType="ObjectRef">2122741390</item>
            <item dataType="ObjectRef">3652497482</item>
            <item dataType="Type" id="2606366108" value="Duality.Components.Physics.RigidBody" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3394408654">
            <item dataType="ObjectRef">2374044856</item>
            <item dataType="ObjectRef">1655896492</item>
            <item dataType="ObjectRef">3076506448</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2374044856</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4252642844">GMCuwH+1UECfDHU4lEiqzA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Platform</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">787527030</item>
    <item dataType="ObjectRef">1343490243</item>
    <item dataType="ObjectRef">2834260959</item>
    <item dataType="Struct" type="Duality.GameObject" id="3210924618">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="531755284">
        <_items dataType="Array" type="Duality.Component[]" id="3365812324">
          <item dataType="Struct" type="Duality.Components.Transform" id="1276272254">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3210924618</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="558123890">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3210924618</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1978733846">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3210924618</gameobj>
          </item>
          <item dataType="Struct" type="Behavior.PlayerBullet" id="2152877543">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3210924618</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2282608950" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3587539390">
            <item dataType="ObjectRef">2122741390</item>
            <item dataType="ObjectRef">3652497482</item>
            <item dataType="ObjectRef">2606366108</item>
            <item dataType="Type" id="3931598864" value="Behavior.PlayerBullet" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2983097354">
            <item dataType="ObjectRef">1276272254</item>
            <item dataType="ObjectRef">558123890</item>
            <item dataType="ObjectRef">1978733846</item>
            <item dataType="ObjectRef">2152877543</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1276272254</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3147100622">5ppacjgOoUizTMNIT9iGDQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">PlayerBullet</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2470407088">
        <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="2689265096">
          <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1936512620" length="4">
            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="370674088">
                <_items dataType="Array" type="System.Int32[]" id="1060155052"></_items>
                <_size dataType="Int">0</_size>
                <_version dataType="Int">1</_version>
              </childIndex>
              <componentType dataType="ObjectRef">3931598864</componentType>
              <prop dataType="MemberInfo" id="974397342" value="P:Behavior.PlayerBullet:Speed" />
              <val dataType="Float">5</val>
            </item>
          </_items>
          <_size dataType="Int">1</_size>
          <_version dataType="Int">1</_version>
        </changes>
        <obj dataType="ObjectRef">3210924618</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Prefabs\PlayerBullet.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
