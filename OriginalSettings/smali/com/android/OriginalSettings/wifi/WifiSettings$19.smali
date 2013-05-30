.class Lcom/android/OriginalSettings/wifi/WifiSettings$19;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2169
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 2171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    iget v12, v12, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v12, :cond_5

    .line 2172
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MangeNetwork dialog bttn clicked: button = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 2174
    const-string v12, "WifiSettings"

    const-string v13, "COnnect button clicked  in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v12

    const v13, 0x7fffffff

    if-ne v12, v13, :cond_1

    .line 2176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2355
    :cond_0
    :goto_0
    return-void

    .line 2178
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v15

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v14, v15}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1200(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2181
    :cond_2
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 2182
    const-string v12, "WifiSettings"

    const-string v13, "Neutral edit  button clicked  in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2300(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 2184
    :cond_3
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 2185
    const-string v12, "WifiSettings"

    const-string v13, "Remove button clicked  in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2195
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 2200
    :cond_5
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_7

    sget v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->forget_network:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v12, :cond_7

    .line 2201
    const-string v12, "WifiSettings"

    const-string v13, "negative forget button in connected network dialog in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2211
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 2212
    const-string v12, " "

    sput-object v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 2215
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    iget v12, v12, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_9

    const/4 v2, 0x1

    .line 2217
    .local v2, forgetable:Z
    :goto_1
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_a

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v12, :cond_a

    sget v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->edit_network:I

    if-nez v12, :cond_a

    .line 2218
    const-string v12, "WifiSettings"

    const-string v13, "forget button in connected network dialog in normal wifi settings"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_FORGET"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2229
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 2230
    const-string v12, " "

    sput-object v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 2215
    .end local v2           #forgetable:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 2232
    .restart local v2       #forgetable:Z
    :cond_a
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_b

    sget-boolean v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->vzwViewFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 2233
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_VIEW"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    const-string v12, "WifiSettings"

    const-string v13, "View button in connected netork dialog in normal wifi settings"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V
    invoke-static {v12, v13, v14, v15}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2500(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    .line 2236
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->vzwViewFlag:Z

    goto/16 :goto_0

    .line 2237
    :cond_b
    const/4 v12, -0x3

    move/from16 v0, p2

    if-eq v0, v12, :cond_c

    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1b

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_1b

    sget v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->edit_network:I

    if-nez v12, :cond_1b

    .line 2238
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_SUBMIT/BUTTON_CONNECT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    sget-object v10, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 2241
    .local v10, previousPass:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2242
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const-string v11, ""

    .line 2244
    .local v11, sChangedpassword:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v12, :cond_d

    .line 2245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->changedssid:Ljava/lang/String;

    .line 2248
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-ne v12, v13, :cond_e

    const/4 v7, 0x1

    .line 2249
    .local v7, nSecuritysame:Z
    :goto_2
    sget-object v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2251
    .local v6, nPasswordsame:Z
    if-nez v1, :cond_10

    .line 2252
    const-string v12, "WifiSettings"

    const-string v13, " config null "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2600(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v15

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v14, v15}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1200(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 2248
    .end local v6           #nPasswordsame:Z
    .end local v7           #nSecuritysame:Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_2

    :cond_f
    const/4 v7, 0x1

    goto :goto_2

    .line 2256
    .restart local v6       #nPasswordsame:Z
    .restart local v7       #nSecuritysame:Z
    :cond_10
    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_16

    .line 2257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 2258
    const-string v12, "WifiSettings"

    const-string v13, " mSelectedAccessPoint != null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 2261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2264
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 2266
    const/4 v12, -0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_14

    .line 2267
    :cond_12
    const-string v12, "WifiSettings"

    const-string v13, " Uzzal EDIT--> CONNECT clicked."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2700(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 2271
    .local v3, found:Z
    if-nez v3, :cond_13

    .line 2272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    .line 2273
    .local v9, newNetId:I
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveNetwork():newNetId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2275
    const/4 v12, -0x1

    if-eq v9, v12, :cond_13

    .line 2276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v9, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1200(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2278
    .end local v9           #newNetId:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v1, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2800(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 2281
    .end local v3           #found:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    const v13, 0x7f090249

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2282
    .local v5, messageRes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v5, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 2283
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2700(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 2286
    .restart local v3       #found:Z
    if-nez v3, :cond_15

    .line 2287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    .line 2288
    .restart local v9       #newNetId:I
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveNetwork():newNetId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", and enabled"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2293
    .end local v9           #newNetId:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 2297
    .end local v3           #found:Z
    .end local v5           #messageRes:Ljava/lang/String;
    :cond_16
    const-string v12, "WifiSettings"

    const-string v13, "new network"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v12, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2900(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 2299
    .local v8, networkId:I
    const/4 v12, -0x1

    if-ne v8, v12, :cond_17

    .line 2300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f09024a

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2303
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2304
    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2305
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2600(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 2306
    :cond_18
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_19

    .line 2307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 2309
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v8, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1200(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2311
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2312
    .local v4, intent:Landroid/content/Intent;
    const-string v12, "wifi_state"

    const/4 v13, 0x3

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2313
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v12, v13, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$000(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 2314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2400(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    .line 2315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v12, v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$3000(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2317
    .end local v4           #intent:Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    const v13, 0x7f090249

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2318
    .restart local v5       #messageRes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v5, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 2319
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 2322
    .end local v5           #messageRes:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v1, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2800(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2323
    sget-object v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    sput-object v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 2327
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #nPasswordsame:Z
    .end local v7           #nSecuritysame:Z
    .end local v8           #networkId:I
    .end local v10           #previousPass:Ljava/lang/String;
    .end local v11           #sChangedpassword:Ljava/lang/String;
    :cond_1b
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_1d

    .line 2328
    const-string v12, "WifiSettings"

    const-string v13, "onClick() BUTTON_CONNECTED_EDIT neutral edit button in unconnected network dialog in manage networks"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v12, :cond_1c

    .line 2330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 2331
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "password is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2300(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    .line 2335
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 2336
    const/4 v12, 0x0

    sput v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0

    .line 2333
    :cond_1c
    const-string v12, "WifiSettings"

    const-string v13, "   mNewDialog.mPasswordView is null 1 "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2337
    :cond_1d
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_1f

    sget-boolean v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->vzwEditFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1f

    .line 2338
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_EDIT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    if-eqz v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v12, :cond_1e

    .line 2340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v12}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 2341
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "password is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2300(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    .line 2345
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->vzwEditFlag:Z

    goto/16 :goto_0

    .line 2343
    :cond_1e
    const-string v12, "WifiSettings"

    const-string v13, "  mNewDialog.mPasswordView is null  "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2346
    :cond_1f
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_20

    sget v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->edit_network:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_20

    .line 2347
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_EDIT NW"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiSettings$19;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/OriginalSettings/wifi/WifiSettings;->showNewDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2300(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    .line 2349
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 2350
    const/4 v12, 0x0

    sput v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0

    .line 2352
    :cond_20
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiNewDialog.BUTTON_NEGATIVE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    const/4 v12, 0x0

    sput v12, Lcom/android/OriginalSettings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0
.end method
