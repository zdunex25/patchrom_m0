.class Lcom/android/server/enterprise/ApplicationPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/ApplicationPolicy;->registerWidgetChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 4147
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4149
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->access$700(Lcom/android/server/enterprise/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 4150
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4151
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->access$1500(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->access$1600(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/util/List;)V

    .line 4153
    :cond_0
    return-void
.end method
