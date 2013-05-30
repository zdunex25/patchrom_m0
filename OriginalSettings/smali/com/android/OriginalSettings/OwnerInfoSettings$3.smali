.class Lcom/android/OriginalSettings/OwnerInfoSettings$3;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/OriginalSettings/OwnerInfoSettings$3;->this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings$3;->this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;

    #getter for: Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->access$000(Lcom/android/OriginalSettings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings$3;->this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;

    #calls: Lcom/android/OriginalSettings/OwnerInfoSettings;->showInputMethod()V
    invoke-static {v0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->access$100(Lcom/android/OriginalSettings/OwnerInfoSettings;)V

    .line 95
    return-void
.end method
