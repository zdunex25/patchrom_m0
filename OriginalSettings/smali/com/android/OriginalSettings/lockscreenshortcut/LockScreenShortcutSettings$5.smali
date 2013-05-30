.class Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$5;
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
    .line 787
    iput-object p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$5;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const v2, 0x7f020364

    .line 790
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 791
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 811
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 794
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 795
    iget-object v1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$5;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #calls: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->changeShortCut(Landroid/widget/ImageView;)V
    invoke-static {v1, v0}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$900(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 800
    :pswitch_1
    const v1, 0x7f02026f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 805
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 791
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
