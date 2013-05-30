.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$6;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$6;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1416
    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog ok is clicked.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    return-void
.end method
