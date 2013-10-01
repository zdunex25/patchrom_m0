.class Lcom/android/camera/ui/InLineSettingSwitch$1;
.super Ljava/lang/Object;
.source "InLineSettingSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/InLineSettingSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/InLineSettingSwitch;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/InLineSettingSwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingSwitch$1;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch$1;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/InLineSettingSwitch;->changeIndex(I)Z

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
