.class Lcom/android/camera/PieController$1;
.super Ljava/lang/Object;
.source "PieController.java"

# interfaces
.implements Lcom/android/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PieController;->addItem(Ljava/lang/String;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PieController;

.field final synthetic val$index:I

.field final synthetic val$pref:Lcom/android/camera/IconListPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/PieController$1;->this$0:Lcom/android/camera/PieController;

    iput-object p2, p0, Lcom/android/camera/PieController$1;->val$pref:Lcom/android/camera/IconListPreference;

    iput p3, p0, Lcom/android/camera/PieController$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/PieController$1;->val$pref:Lcom/android/camera/IconListPreference;

    iget v1, p0, Lcom/android/camera/PieController$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/PieController$1;->this$0:Lcom/android/camera/PieController;

    iget-object v1, p0, Lcom/android/camera/PieController$1;->val$pref:Lcom/android/camera/IconListPreference;

    #calls: Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V
    invoke-static {v0, v1}, Lcom/android/camera/PieController;->access$000(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/PieController$1;->this$0:Lcom/android/camera/PieController;

    iget-object v1, p0, Lcom/android/camera/PieController$1;->val$pref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 124
    return-void
.end method
