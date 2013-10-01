.class Lcom/android/camera/ui/TimeIntervalPopup$1;
.super Ljava/lang/Object;
.source "TimeIntervalPopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/TimeIntervalPopup;->initialize(Lcom/android/camera/IconListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/TimeIntervalPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/TimeIntervalPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/camera/ui/TimeIntervalPopup$1;->this$0:Lcom/android/camera/ui/TimeIntervalPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup$1;->this$0:Lcom/android/camera/ui/TimeIntervalPopup;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    .line 99
    return-void
.end method
