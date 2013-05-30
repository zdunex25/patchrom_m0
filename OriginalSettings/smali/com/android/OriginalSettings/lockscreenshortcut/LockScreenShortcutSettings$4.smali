.class Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$4;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$4;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 774
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 783
    :goto_0
    :pswitch_0
    return v1

    .line 779
    :pswitch_1
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 780
    iget-object v0, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$4;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$402(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    goto :goto_0

    .line 774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
