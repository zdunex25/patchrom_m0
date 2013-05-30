.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mConnectedDevAddr:Ljava/lang/String;

.field private mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

.field private mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

.field private mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

.field private mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

.field private mIsGotoJoinState:Z

.field private mIsInactiveState:Z

.field private mNfcProvisionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

.field private mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

.field private mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

.field private mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

.field private mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

.field private mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

.field private mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

.field private mRequestNfcCalled:Z

.field private mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mSelectP2pConfigIndex:I

.field private mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;

.field private mSelectedP2pGroupAddress:Ljava/lang/String;

.field private mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

.field private mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

.field private mWaitForUserActionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;

.field private mWaitForWifiDisableState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

.field private mWfdInfo:Lcom/samsung/wfd/WfdInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "p2pSupported"

    .prologue
    const/4 v2, 0x0

    .line 443
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    .line 444
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 385
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    .line 386
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    .line 387
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    .line 388
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    .line 389
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForUserActionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;

    .line 390
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForWifiDisableState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    .line 391
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    .line 392
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    .line 394
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    .line 395
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    .line 396
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    .line 398
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    .line 399
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    .line 401
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    .line 402
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    .line 405
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mNfcProvisionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

    .line 407
    new-instance v0, Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 408
    new-instance v0, Landroid/net/wifi/WifiMonitor;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 410
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 411
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    .line 437
    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z

    .line 439
    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsInactiveState:Z

    .line 441
    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mRequestNfcCalled:Z

    .line 446
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 447
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 448
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 449
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 450
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForUserActionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 451
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForWifiDisableState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 452
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 453
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 454
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 455
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mNfcProvisionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 456
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 457
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 458
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 459
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 460
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 461
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 463
    if-eqz p3, :cond_0

    .line 464
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopLegacyWifiScan(Z)V

    return-void
.end method

.method static synthetic access$10300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    return-object v0
.end method

.method static synthetic access$10600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z

    return v0
.end method

.method static synthetic access$10802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V

    return-void
.end method

.method static synthetic access$11100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Lcom/samsung/wfd/WfdInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method static synthetic access$11402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/samsung/wfd/WfdInfo;)Lcom/samsung/wfd/WfdInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object p1
.end method

.method static synthetic access$11500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendWfdSessionChangedBroadcast()V

    return-void
.end method

.method static synthetic access$11600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object v0
.end method

.method static synthetic access$11602(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object p1
.end method

.method static synthetic access$11700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I

    return v0
.end method

.method static synthetic access$11702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I

    return p1
.end method

.method static synthetic access$11708(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 383
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I

    return v0
.end method

.method static synthetic access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$11802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$12000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopDhcpServer()V

    return-void
.end method

.method static synthetic access$12300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showConnectionLimitDialog()V

    return-void
.end method

.method static synthetic access$12700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mRequestNfcCalled:Z

    return v0
.end method

.method static synthetic access$12702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mRequestNfcCalled:Z

    return p1
.end method

.method static synthetic access$12800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceivedForceAccept()V

    return-void
.end method

.method static synthetic access$12900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$13200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupTermination()V

    return-void
.end method

.method static synthetic access$13300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearNotification()V

    return-void
.end method

.method static synthetic access$13400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$13700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$13800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$14000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearSoundNotification()V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setDialogListenerApp(Landroid/os/Messenger;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setLegacyWifiEnable(Z)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForWifiDisableState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyP2pEnableFailure()V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->initializeP2pSettings()V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsInactiveState:Z

    return v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setAndPersistDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsInactiveState:Z

    return p1
.end method

.method static synthetic access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearSupplicantServiceRequest()V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method static synthetic access$6402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object p1
.end method

.method static synthetic access$6600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->configuredNetworkId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendConnectNoticeToApp(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isGroupOwner(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mNfcProvisionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

    return-object v0
.end method

.method static synthetic access$8500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure()V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceived()V

    return-void
.end method

.method static synthetic access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->soundNotification()V

    return-void
.end method

.method static synthetic access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendShowPinReqToFrontApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 4
    .parameter "m"
    .parameter "servInfo"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2914
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientDeadChannels()V

    .line 2915
    invoke-direct {p0, p1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2916
    .local v0, clientInfo:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2929
    :cond_0
    :goto_0
    return v1

    .line 2920
    :cond_1
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15500(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2924
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiNative;->p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2925
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15500(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2929
    goto :goto_0
.end method

.method private addMsgToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 6
    .parameter "group"
    .parameter "stringId"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2353
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2354
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109013f

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2356
    .local v1, row:Landroid/view/View;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/16 v3, 0x1e

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I
    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$14302(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 2357
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const v2, 0x10202bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v3, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$14402(Landroid/net/wifi/p2p/WifiP2pService;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2358
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$14400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$14300(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2359
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$14400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x4198

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2360
    const-string v2, "@android:style/Theme.DeviceDefault"

    const-string v3, "Theme.DeviceDefault.Light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2361
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$14400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0xd9d9da

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2365
    :goto_0
    const v2, 0x10202fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2366
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2367
    return-void

    .line 2363
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$14400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0x141415

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .parameter "group"
    .parameter "stringId"
    .parameter "value"

    .prologue
    .line 2344
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2345
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109013f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2347
    .local v1, row:Landroid/view/View;
    const v2, 0x10202fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2348
    const v2, 0x10202bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2349
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2350
    return-void
.end method

.method private addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 4
    .parameter "m"
    .parameter "req"

    .prologue
    const/4 v1, 0x1

    .line 2838
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientDeadChannels()V

    .line 2839
    invoke-direct {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2840
    .local v0, clientInfo:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2841
    const/4 v1, 0x0

    .line 2854
    :cond_0
    :goto_0
    return v1

    .line 2844
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15004(Landroid/net/wifi/p2p/WifiP2pService;)B

    .line 2846
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15000(Landroid/net/wifi/p2p/WifiP2pService;)B

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15004(Landroid/net/wifi/p2p/WifiP2pService;)B

    .line 2847
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15000(Landroid/net/wifi/p2p/WifiP2pService;)B

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->setTransactionId(I)V

    .line 2848
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$15000(Landroid/net/wifi/p2p/WifiP2pService;)B

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2850
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$8000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2854
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v1

    goto :goto_0
.end method

.method private clearClientDeadChannels()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3002
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3004
    .local v1, deadClients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Messenger;>;"
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 3005
    .local v0, c:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 3006
    .local v5, msg:Landroid/os/Message;
    const v6, 0x22031

    iput v6, v5, Landroid/os/Message;->what:I

    .line 3007
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 3008
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 3009
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3011
    :try_start_0
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15600(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3012
    :catch_0
    move-exception v2

    .line 3013
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "detect dead channel"

    invoke-direct {p0, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3014
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15600(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3018
    .end local v0           #c:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v5           #msg:Landroid/os/Message;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 3019
    .local v4, m:Landroid/os/Messenger;
    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    goto :goto_1

    .line 3021
    .end local v4           #m:Landroid/os/Messenger;
    :cond_1
    return-void
.end method

.method private clearClientInfo(Landroid/os/Messenger;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 2965
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    .line 2966
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    .line 2967
    return-void
.end method

.method private clearLocalServices(Landroid/os/Messenger;)V
    .locals 5
    .parameter "m"

    .prologue
    .line 2948
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2949
    .local v0, clientInfo:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2962
    :cond_0
    :goto_0
    return-void

    .line 2953
    :cond_1
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15500(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 2954
    .local v2, servInfo:Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    goto :goto_1

    .line 2957
    .end local v2           #servInfo:Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :cond_2
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15500(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2958
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2959
    const-string v3, "remove client information from framework"

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2960
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v3

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15600(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 2705
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2706
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearStatusBarIcon()V

    .line 2716
    :cond_0
    :goto_0
    return-void

    .line 2710
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2712
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2713
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2714
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v2, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15102(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;

    goto :goto_0
.end method

.method private clearServiceRequests(Landroid/os/Messenger;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 2890
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2891
    .local v0, clientInfo:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2911
    :cond_0
    :goto_0
    return-void

    .line 2895
    :cond_1
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2899
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2901
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15500(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2902
    const-string v1, "remove channel information from framework"

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2903
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15600(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2906
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$8000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2910
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0
.end method

.method private clearSoundNotification()V
    .locals 3

    .prologue
    .line 2746
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2748
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2749
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2750
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v2, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15202(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 2752
    :cond_0
    return-void
.end method

.method private clearStatusBarIcon()V
    .locals 3

    .prologue
    .line 2725
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2727
    .local v0, mStatusBarManager:Landroid/app/StatusBarManager;
    const-string v1, "wifi_p2p"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 2728
    return-void
.end method

.method private clearSupplicantServiceRequest()V
    .locals 2

    .prologue
    .line 2828
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$8000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2832
    :goto_0
    return-void

    .line 2830
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$8000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->p2pServDiscCancelReq(Ljava/lang/String;)Z

    .line 2831
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$8002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private configuredNetworkId(Ljava/lang/String;)I
    .locals 1
    .parameter "deviceAddress"

    .prologue
    .line 2537
    const/4 v0, -0x1

    return v0
.end method

.method private getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .locals 3
    .parameter "m"
    .parameter "createIfNotExist"

    .prologue
    .line 3031
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 3033
    .local v0, clientInfo:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3034
    const-string v1, "add a new client"

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3035
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .end local v0           #clientInfo:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;Landroid/net/wifi/p2p/WifiP2pService$1;)V

    .line 3036
    .restart local v0       #clientInfo:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3039
    :cond_0
    return-object v0
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "deviceAddress"

    .prologue
    .line 2553
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 2554
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 2555
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2558
    .end local p1
    :cond_0
    return-object p1
.end method

.method private getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "deviceAddress"

    .prologue
    .line 2562
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 2563
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 2564
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 2566
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersistedDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2582
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2584
    .local v0, deviceName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2587
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2589
    .local v1, id:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2591
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #id:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mac"

    .prologue
    const/16 v3, 0x11

    .line 3188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3191
    .end local p1
    :cond_0
    return-object p1
.end method

.method private handleGroupCreationFailure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2648
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2649
    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2653
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$8002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 2654
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V

    .line 2655
    const v0, 0x2206c

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 2656
    return-void
.end method

.method private initializeP2pSettings()V
    .locals 3

    .prologue
    .line 2612
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setPersistentReconnect(Z)Z

    .line 2613
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    .line 2616
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 2617
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 2620
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v1, "virtual_push_button physical_display keypad"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    .line 2622
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v1, "sta"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setConcurrencyPriority(Ljava/lang/String;)Z

    .line 2625
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    .line 2626
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v1, "static_ip"

    const-string v2, "192.168.49.10"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2627
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    const-string v1, "192.168.49.10"

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->mThisDeviceStaticIp:I

    .line 2631
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->p2pGetDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2632
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V

    .line 2633
    const-string v0, "WifiP2pService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2636
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 2637
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->p2pServiceFlush()Z

    .line 2638
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15002(Landroid/net/wifi/p2p/WifiP2pService;B)B

    .line 2639
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$8002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 2640
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3183
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 3176
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3178
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x0

    .line 3165
    if-nez p1, :cond_1

    .line 3172
    :cond_0
    :goto_0
    return v1

    .line 3167
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mActivityMgr:Landroid/app/ActivityManager;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$16000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/ActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 3168
    .local v0, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3172
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private isGroupOwner(Ljava/lang/String;)Z
    .locals 3
    .parameter "deviceAddress"

    .prologue
    .line 2494
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2495
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2496
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    .line 2499
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 2659
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2660
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2663
    :goto_0
    return v0

    .line 2662
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->mDeviceType:Ljava/lang/String;

    .line 2663
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 2788
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 2792
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    return-void
.end method

.method private notifyInvitationReceived()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 2389
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 2390
    .local v8, r:Landroid/content/res/Resources;
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v10, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 2391
    .local v10, wps:Landroid/net/wifi/WpsInfo;
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109013e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 2394
    .local v9, textEntryView:Landroid/view/View;
    const v0, 0x10203bc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2398
    .local v6, group:Landroid/view/ViewGroup;
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2399
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->p2pFind()Z

    .line 2402
    :cond_0
    const v0, 0x1040520

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addMsgToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2405
    const v0, 0x1020453

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 2406
    .local v7, pin:Landroid/widget/EditText;
    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 2408
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$14500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2410
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104051a

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040517

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$3;

    invoke-direct {v3, p0, v10, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$3;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040518

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;

    invoke-direct {v3, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$1;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$14602(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2451
    iget v0, v10, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v0, :pswitch_data_0

    .line 2464
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$14600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2465
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$14600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2467
    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;JJ)V

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;
    invoke-static {v11, v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$14702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 2481
    return-void

    .line 2453
    :pswitch_0
    const-string v0, "Enter pin section visible"

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2454
    const v0, 0x1020452

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2457
    :pswitch_1
    const-string v0, "Shown pin section visible"

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2458
    const v0, 0x104051e

    iget-object v1, v10, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_0

    .line 2451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyInvitationReceivedForceAccept()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2484
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v0, :cond_0

    .line 2485
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2490
    :goto_0
    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2491
    return-void

    .line 2487
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v2, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pin"
    .parameter "peerAddress"

    .prologue
    const/4 v6, 0x0

    .line 2370
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2372
    .local v2, r:Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x109013e

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2375
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x10203bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2376
    .local v1, group:Landroid/view/ViewGroup;
    const v4, 0x104051c

    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2377
    const v4, 0x104051e

    invoke-direct {p0, v1, v4, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2379
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040519

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2384
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2385
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2386
    return-void
.end method

.method private notifyP2pEnableFailure()V
    .locals 5

    .prologue
    .line 2322
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2323
    .local v1, r:Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040512

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040514

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2328
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2329
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2330
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    .line 2782
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2783
    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2784
    return-object v0
.end method

.method private p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V
    .locals 2
    .parameter "config"
    .parameter "join"

    .prologue
    .line 2570
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    move-result-object v0

    .line 2572
    .local v0, pin:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2573
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendShowPinReqToFrontApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2574
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2579
    :cond_0
    :goto_0
    return-void

    .line 2576
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 3
    .parameter "m"
    .parameter "servInfo"

    .prologue
    .line 2933
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2934
    .local v0, clientInfo:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2945
    :cond_0
    :goto_0
    return-void

    .line 2938
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    .line 2940
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15500(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2941
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15500(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2942
    const-string v1, "remove client information from framework"

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2943
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15600(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 5
    .parameter "m"
    .parameter "req"

    .prologue
    .line 2858
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2859
    .local v0, clientInfo:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2886
    :cond_0
    :goto_0
    return-void

    .line 2865
    :cond_1
    const/4 v2, 0x0

    .line 2866
    .local v2, removed:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2867
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2868
    const/4 v2, 0x1

    .line 2869
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2874
    :cond_2
    if-eqz v2, :cond_0

    .line 2876
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_3

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15500(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2877
    const-string v3, "remove client information from framework"

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2878
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v3

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15600(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2881
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$8000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2885
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0

    .line 2866
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    .line 2757
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2761
    :goto_0
    return-void

    .line 2758
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2759
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2760
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 2764
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2769
    :goto_0
    return-void

    .line 2765
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2766
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2767
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2768
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2772
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2777
    :goto_0
    return-void

    .line 2773
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2774
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2775
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2776
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendConnectNoticeToApp(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 3
    .parameter "dev"
    .parameter "config"

    .prologue
    .line 3086
    if-nez p1, :cond_0

    .line 3087
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .end local p1
    iget-object v2, p2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p1, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    .line 3090
    .restart local p1
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isForegroundApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3091
    const-string v2, "application is NOT foreground"

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3092
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendDetachedMsg(I)V

    .line 3093
    const/4 v2, 0x0

    .line 3102
    :goto_0
    return v2

    .line 3096
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3097
    .local v1, msg:Landroid/os/Message;
    const v2, 0x22039

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3098
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3099
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "wifiP2pDevice"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3100
    const-string v2, "wifiP2pConfig"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3101
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3102
    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendDialogMsgToFrontApp(Landroid/os/Message;)Z

    move-result v2

    goto :goto_0
.end method

.method private sendDetachedMsg(I)V
    .locals 3
    .parameter "reason"

    .prologue
    const/4 v2, 0x0

    .line 3047
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3058
    :goto_0
    return-void

    .line 3049
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3050
    .local v0, msg:Landroid/os/Message;
    const v1, 0x22037

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3051
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3053
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3056
    :goto_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3057
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3054
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private sendDialogMsgToFrontApp(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 3112
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3118
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3113
    :catch_0
    move-exception v0

    .line 3114
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3115
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 3116
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendP2pConnectionChangedBroadcast()V
    .locals 4

    .prologue
    .line 2263
    const-string v1, "sending p2p connection changed broadcast"

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2265
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2267
    const-string v1, "wifiP2pInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2268
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$2200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2269
    const-string v1, "connectedDevAddress"

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2270
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2272
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2273
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    .line 2274
    :cond_0
    return-void
.end method

.method private sendP2pDiscoveryChangedBroadcast(Z)V
    .locals 3
    .parameter "started"

    .prologue
    .line 2231
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$14100(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2242
    :goto_0
    return-void

    .line 2232
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z
    invoke-static {v1, p1}, Landroid/net/wifi/p2p/WifiP2pService;->access$14102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discovery change broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2237
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2238
    const-string v2, "discoveryState"

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2241
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2238
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private sendP2pPeersChangedBroadcast()V
    .locals 3

    .prologue
    .line 2252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2253
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2254
    const-string v1, "wifiP2pGroupInfo"

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2255
    const-string v1, "connectedDevAddress"

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2256
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2258
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2259
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    .line 2260
    :cond_0
    return-void
.end method

.method private sendP2pStateChangedBroadcast(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 2218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2219
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2220
    if-eqz p1, :cond_0

    .line 2221
    const-string v1, "wifi_p2p_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2227
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2228
    return-void

    .line 2224
    :cond_0
    const-string v1, "wifi_p2p_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 8
    .parameter "resp"

    .prologue
    const/4 v7, 0x0

    .line 2975
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 2976
    .local v0, c:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getTransactionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 2977
    .local v4, req:Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v4, :cond_0

    .line 2978
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 2979
    .local v3, msg:Landroid/os/Message;
    const v5, 0x22032

    iput v5, v3, Landroid/os/Message;->what:I

    .line 2980
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 2981
    iput v7, v3, Landroid/os/Message;->arg2:I

    .line 2982
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2984
    :try_start_0
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15600(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2985
    :catch_0
    move-exception v1

    .line 2986
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "detect dead channel"

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2987
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15600(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    .line 2992
    .end local v0           #c:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #req:Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_1
    return-void
.end method

.method private sendShowPinReqToFrontApp(Ljava/lang/String;)Z
    .locals 3
    .parameter "pin"

    .prologue
    .line 3066
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isForegroundApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3067
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendDetachedMsg(I)V

    .line 3068
    const/4 v2, 0x0

    .line 3075
    :goto_0
    return v2

    .line 3070
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3071
    .local v1, msg:Landroid/os/Message;
    const v2, 0x2203a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3072
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3073
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "wpsPin"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3075
    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendDialogMsgToFrontApp(Landroid/os/Message;)Z

    move-result v2

    goto :goto_0
.end method

.method private sendThisDeviceChangedBroadcast()V
    .locals 4

    .prologue
    .line 2245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2246
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2247
    const-string v1, "wifiP2pDevice"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2248
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2249
    return-void
.end method

.method private sendWfdSessionChangedBroadcast()V
    .locals 3

    .prologue
    .line 2278
    const-string v1, "sending Wfd session changed broadcast"

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2280
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$2200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2281
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2285
    :goto_0
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2288
    const-string v1, "wifiP2pGroupInfo"

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2289
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2290
    return-void

    .line 2283
    :cond_0
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setAndPersistDeviceName(Ljava/lang/String;)Z
    .locals 3
    .parameter "devName"

    .prologue
    const/4 v0, 0x0

    .line 2595
    if-nez p1, :cond_0

    .line 2608
    :goto_0
    return v0

    .line 2597
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2602
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2603
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 2605
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2607
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 2608
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDialogListenerApp(Landroid/os/Messenger;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "m"
    .parameter "appPkgName"
    .parameter "isReset"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3131
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3132
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isForegroundApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3134
    const-string v1, "application is NOT foreground"

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3155
    :cond_0
    :goto_0
    return v0

    .line 3138
    :cond_1
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendDetachedMsg(I)V

    .line 3141
    :cond_2
    if-eqz p3, :cond_3

    .line 3142
    const-string v0, "reset dialog listener"

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3143
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;
    invoke-static {v0, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$15802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3144
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$15902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    .line 3145
    goto :goto_0

    .line 3148
    :cond_3
    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isForegroundApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3152
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;
    invoke-static {v0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3153
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 3154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dialog listener. app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 3155
    goto :goto_0
.end method

.method private setLegacyWifiEnable(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 2518
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 2519
    .local v2, tWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 2520
    if-eqz p1, :cond_1

    .line 2521
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2522
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x1a

    iput v3, v1, Landroid/os/Message;->what:I

    .line 2524
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2525
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2526
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2527
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2533
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method private setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    .locals 2
    .parameter "serverAddress"

    .prologue
    .line 2541
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 2542
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 2543
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 2544
    return-void
.end method

.method private setWifiP2pInfoOnGroupTermination()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2547
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 2548
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 2549
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 2550
    return-void
.end method

.method private showConnectionLimitDialog()V
    .locals 7

    .prologue
    .line 2333
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2334
    .local v1, r:Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040512

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040522

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2339
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2340
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2341
    return-void
.end method

.method private showNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2667
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isTablet()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2668
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showStatusBarIcon()V

    .line 2702
    :cond_0
    :goto_0
    return-void

    .line 2672
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2674
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 2678
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2679
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.wifi.p2p.WifiP2pSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2680
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2682
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2684
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 2686
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x104051f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$11200(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2687
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x1040516

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2690
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    if-nez v6, :cond_2

    .line 2691
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$15102(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 2692
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2694
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x1080702

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2695
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 2696
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2697
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2699
    :cond_2
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2701
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private showStatusBarIcon()V
    .locals 5

    .prologue
    .line 2719
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2721
    .local v0, mStatusBarManager:Landroid/app/StatusBarManager;
    const-string v1, "wifi_p2p"

    const v2, 0x1080702

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 2722
    return-void
.end method

.method private soundNotification()V
    .locals 4

    .prologue
    .line 2731
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2733
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 2743
    :goto_0
    return-void

    .line 2736
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2737
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15202(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 2738
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 2739
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 2740
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 2742
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private startDhcpServer(Ljava/lang/String;)V
    .locals 5
    .parameter "intf"

    .prologue
    .line 2293
    const/4 v1, 0x0

    .line 2295
    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 2296
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "192.168.49.1"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x18

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 2298
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 2299
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 2301
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$14200()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started Dhcp server on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2308
    :goto_0
    return-void

    .line 2302
    :catch_0
    move-exception v0

    .line 2303
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error configuring interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDhcpServer()V
    .locals 3

    .prologue
    .line 2312
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2318
    const-string v1, "Stopped Dhcp server"

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2319
    :goto_0
    return-void

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error stopping Dhcp server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopLegacyWifiScan(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 2503
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$200(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2504
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 2505
    .local v2, tWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 2506
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2507
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x1a

    iput v3, v1, Landroid/os/Message;->what:I

    .line 2509
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2510
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2511
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2512
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2515
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #tWifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private updateSupplicantServiceRequest()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 2799
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearSupplicantServiceRequest()V

    .line 2801
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2802
    .local v4, sb:Ljava/lang/StringBuffer;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$14900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 2805
    .local v0, c:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 2806
    #getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$15400(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 2807
    .local v3, req:Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v3, :cond_1

    .line 2808
    invoke-virtual {v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->getSupplicantQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2805
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2813
    .end local v0           #c:Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .end local v1           #i:I
    .end local v3           #req:Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 2821
    :cond_3
    :goto_1
    return v5

    .line 2817
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiNative;->p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$8002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 2818
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$8000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2821
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private updateThisDevice(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 2643
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 2644
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 2645
    return-void
.end method
