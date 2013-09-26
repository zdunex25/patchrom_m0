.class Lpavlyukoff/m7Parts/LinkToggles$1$2;
.super Ljava/lang/Object;
.source "LinkToggles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpavlyukoff/m7Parts/LinkToggles$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpavlyukoff/m7Parts/LinkToggles$1;


# direct methods
.method constructor <init>(Lpavlyukoff/m7Parts/LinkToggles$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lpavlyukoff/m7Parts/LinkToggles$1$2;->this$1:Lpavlyukoff/m7Parts/LinkToggles$1;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    iget-object v0, p0, Lpavlyukoff/m7Parts/LinkToggles$1$2;->this$1:Lpavlyukoff/m7Parts/LinkToggles$1;

    #getter for: Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;
    invoke-static {v0}, Lpavlyukoff/m7Parts/LinkToggles$1;->access$0(Lpavlyukoff/m7Parts/LinkToggles$1;)Lpavlyukoff/m7Parts/LinkToggles;

    move-result-object v0

    invoke-virtual {v0}, Lpavlyukoff/m7Parts/LinkToggles;->finish()V

    .line 82
    return-void
.end method
