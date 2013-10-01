.class Lcom/android/server/wm/DimAnimator$Parameters;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DimAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parameters"
.end annotation


# instance fields
.field final mDimHeight:I

.field final mDimTarget:F

.field final mDimWidth:I

.field final mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DimAnimator$Parameters;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iget-object v0, p1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 235
    iget v0, p1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    iput v0, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    .line 236
    iget v0, p1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    iput v0, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    .line 237
    iget v0, p1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    iput v0, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    .line 238
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowStateAnimator;IIF)V
    .locals 0
    .parameter "dimWinAnimator"
    .parameter "dimWidth"
    .parameter "dimHeight"
    .parameter "dimTarget"

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 228
    iput p2, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    .line 229
    iput p3, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    .line 230
    iput p4, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    .line 231
    return-void
.end method


# virtual methods
.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v0, "mDimWinAnimator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 243
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget v0, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 245
    const-string v0, " mDimTarget="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 246
    return-void
.end method
