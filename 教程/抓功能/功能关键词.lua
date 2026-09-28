GetCardLevel道具等级1AF6524 BX LR
IsOwnCharacter解锁角色 165E2BC BX LR
MapGroupByRole 杀队友 13A3700 BX LR


按角色映射组
get_JumpGain  跳跃增益  A MOV R0, #16500
get_Speedgain 移速增益  ↑
get_SkinRelatedResources皮肤  
finishbuy     锁金币    偏移  
get_CostFree 免费购物  偏移 
RpcEndUsing 移动开物  偏移 
RpcNotifyQTEResult零概率开锁  偏移 


锁子弹 CheckOneMoreTime
锁金币(可捐)
RpcSubCoin
道具免费
get_CostFree
冷却
get_CooldownGain
不死
DamageShield+


道具无冷却
GetItemCooldownTime
超级秒杀
get_EnhancedDamage
枪枪暴击
get_BrokenStealth


get_SpeedGain
超级跳高
get_JumpGain
杀死队友
get_IsCharacterSelectable
强制开逃生门
get_IsOpend
锁定变身
EndShapeShift
倒地丢道具
Boolean get_Disabled()


字段名m_FireCooldownTime火灾冷却时间
m_MaxCooldownTime最大冷却时间


锁金币(不可捐)
FinishBuy
透视
get_IsVisible或者override Boolean get_IsVisible()
解锁角色全皮肤
OwnSkinPart
移动开物
Void EndUsing(Boolean isCallback) { }
子弹数量
get_MaxRoundCount() { }
子弹无冷却
get_CooldownGain()
MOV	 R0, #20, 6
锁子弹
get_CostFree


解锁模式
public static Boolean GetGameModeIsGradeLimit(MapType mode, out Int32 grade, out Int32 limitGrade) { }
道具全皮肤
OwnCardSkin
解锁道具
Boolean IsOwned(Int32 cardID) { }
解锁风格
Boolean OwnCardStyle


---比赛功能
public Boolean ValidateDefencePvpPowerup(HPowerupPropType powerupType)-----防道具
HPowerupPropType GetRandomProp---锁定道具
Boolean get_isEnterEndGameStage---直接结算
Int32 GetWinScore---结算得分
public Boolean IsFinishGame(Int32 playerID) { }---PVP定人
public Int32 get_scoreMultiplier() { }---自定义倍增
public virtual Void ApplyGravity() { }---跳跃起飞
private IEnumerator SwitchToDieStateWhenGrounded() { }---去除复活弹窗
public Int32 get_coins() { }---锁定金币数量

_________________________________________________________________________

-皮肤道具
public Boolean IsCollectionComplete(CharacterType characterType) { }---人物全解
public Boolean isHoverboardUnlocked(BoardType boardType) { }--滑板全解
public Boolean IsThemeUnlockedForCharacter---皮肤全解
public Boolean IsOrnamentUnlocked(OrnamentType ornamentType) { }---背饰全解

public Boolean IsAvatarFrameOwned(AvatarFrameId id) { }---全头像框
Boolean IsThemeOwned---滑板技能

_________________________________________________________________________

--其他功能
内购破解BuyInApp
全背饰IsOrnamentUnlocked
全滑板isHoverboardUnlocked
全人物IsCollectionComplete
全头像IsAvatarFrameOwned
超长名IsCollectionComplete
十抽调用DrawTenTimes()
单抽调用DrawOneTimes(Boolean isVideo)
十倍得分 显示get_TenTimesScore 获取get_HasBoughtTenTimesScore
双倍得分DoubleScoreMultiplier get_DoubleScoreMultiplier
二段跳跃Boolean get_IsDoubleJump
无限跳跃Boolean AllowDoubleJump


裁判模式
get_IsJudge


get_BrokenStealth        枪枪暴击     获取_BrekenStealth
~A MOV	 R0, #1

get_EnhancedDamage    秒杀人物     获取增强的损坏
~A bx lr

get_CooldownGain       武器间隔    获取冷却增益
~A MOV	 R0, #0

GetItemCooldownTime   道具冷却    获取项目冷却时间
~A MOV	 R0, #0

Boolean IsOwned(Int32 cardID) { } 解锁道具    
~A MOV	 R0, #0


get_JumpGain             跳高        获取跳跃增益
~A MOV	 R0, #16500

get_IsLoseControl         方向键反(不能互交)     获取丢失控制
~A MOV	 R0, #1157627904 

get_DamageReflect        反伤          获取损坏反射    
~A MOV	 R0, #16500

get_IsSkillDisabled         禁跳             获取增强的损坏
~A MOV	 R0, #0

get_Lock                   解锁全部锁     
~A MOV	 R0, #0

(21亿):get_CustomCoinRatio      获得自定义金币
~A MOV	 R0, #20, 6