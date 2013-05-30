.class Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings$2;
.super Ljava/lang/Object;
.source "CustomizableKeySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings$2;->this$0:Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings$2;->this$0:Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;

    #calls: Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->resetCustomizableKey()V
    invoke-static {v0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->access$100(Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;)V

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings$2;->this$0:Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;

    #calls: Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->updateUI()V
    invoke-static {v0}, Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;->access$000(Lcom/android/OriginalSettings/customizablekey/CustomizableKeySettings;)V

    .line 133
    return-void
.end method
