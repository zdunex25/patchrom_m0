.class final Landroid/app/ExtraAttr;
.super Ljava/lang/Object;
.source "SpellScroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExtraAttr$Owner;
    }
.end annotation


# instance fields
.field private final mLocalHash:I

.field private final mName:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "packageContext"
    .parameter "attr"

    .prologue
    .line 1636
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1637
    sget-object v1, Lcom/android/internal/R$styleable;->SpellExtraAttr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1640
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    .line 1641
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    .line 1643
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1645
    invoke-direct {p0}, Landroid/app/ExtraAttr;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    .line 1646
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1648
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1649
    iput-object p1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    .line 1650
    iput-object p2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    .line 1652
    invoke-direct {p0}, Landroid/app/ExtraAttr;->calculateLocalHash()I

    move-result v0

    iput v0, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    .line 1653
    return-void
.end method

.method private calculateLocalHash()I
    .locals 2

    .prologue
    .line 1656
    const/4 v0, 0x0

    .line 1658
    .local v0, result:I
    iget-object v1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1659
    iget-object v1, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1662
    :cond_0
    iget-object v1, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1663
    iget-object v1, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1666
    :cond_1
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    .line 1684
    instance-of v2, p1, Landroid/app/ExtraAttr;

    if-nez v2, :cond_1

    .line 1706
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1688
    check-cast v0, Landroid/app/ExtraAttr;

    .line 1690
    .local v0, other:Landroid/app/ExtraAttr;
    iget v2, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    iget v3, v0, Landroid/app/ExtraAttr;->mLocalHash:I

    if-ne v2, v3, :cond_0

    .line 1694
    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1700
    :cond_4
    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1706
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Landroid/app/ExtraAttr;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Landroid/app/ExtraAttr;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1679
    iget v0, p0, Landroid/app/ExtraAttr;->mLocalHash:I

    return v0
.end method
