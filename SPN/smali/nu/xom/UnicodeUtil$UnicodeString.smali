.class Lnu/xom/UnicodeUtil$UnicodeString;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/UnicodeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeString"
.end annotation


# instance fields
.field private data:[I

.field private size:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    iput v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    new-array v0, p1, [I

    iput-object v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    #calls: Lnu/xom/UnicodeUtil;->isHighSurrogate(C)Z
    invoke-static {v3}, Lnu/xom/UnicodeUtil;->access$000(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lnu/xom/UnicodeUtil;->combineSurrogatePair(CC)I

    move-result v3

    move v5, v3

    move v3, v1

    move v1, v5

    :goto_1
    iget-object v4, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aput v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v3, 0x1

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    :cond_0
    iput v2, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    return-void

    :cond_1
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_1
.end method

.method private isBlocked(II)Z
    .locals 3

    iget-object v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aget v0, v0, p2

    #calls: Lnu/xom/UnicodeUtil;->getCombiningClass(I)I
    invoke-static {v0}, Lnu/xom/UnicodeUtil;->access$200(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aget v2, v2, v1

    #calls: Lnu/xom/UnicodeUtil;->getCombiningClass(I)I
    invoke-static {v2}, Lnu/xom/UnicodeUtil;->access$200(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method append(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    iget-object v1, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    iget v1, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    aput p1, v0, v1

    iget v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    iget-object v1, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    iget v2, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    invoke-virtual {p0, p1}, Lnu/xom/UnicodeUtil$UnicodeString;->append(I)V

    goto :goto_0
.end method

.method append(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    #calls: Lnu/xom/UnicodeUtil;->isHighSurrogate(C)Z
    invoke-static {v1}, Lnu/xom/UnicodeUtil;->access$000(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lnu/xom/UnicodeUtil;->combineSurrogatePair(CC)I

    move-result v1

    invoke-virtual {p0, v1}, Lnu/xom/UnicodeUtil$UnicodeString;->append(I)V

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lnu/xom/UnicodeUtil$UnicodeString;->append(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method compose()Lnu/xom/UnicodeUtil$UnicodeString;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-static {}, Lnu/xom/UnicodeUtil;->access$300()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    #calls: Lnu/xom/UnicodeUtil;->loadCompositions()V
    invoke-static {}, Lnu/xom/UnicodeUtil;->access$400()V

    :cond_0
    new-instance v0, Lnu/xom/UnicodeUtil$UnicodeString;

    iget v1, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    invoke-direct {v0, v1}, Lnu/xom/UnicodeUtil$UnicodeString;-><init>(I)V

    move v1, v8

    move v2, v7

    move v3, v7

    move v4, v7

    :goto_0
    iget v5, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aget v5, v5, v1

    if-eq v4, v7, :cond_1

    invoke-direct {p0, v3, v1}, Lnu/xom/UnicodeUtil$UnicodeString;->isBlocked(II)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    invoke-virtual {v0, v5}, Lnu/xom/UnicodeUtil$UnicodeString;->append(I)V

    #calls: Lnu/xom/UnicodeUtil;->isStarter(I)Z
    invoke-static {v5}, Lnu/xom/UnicodeUtil;->access$500(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v2, v0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    sub-int/2addr v2, v9

    move v3, v1

    move v4, v5

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    #calls: Lnu/xom/UnicodeUtil;->composeCharacter(II)I
    invoke-static {v4, v5}, Lnu/xom/UnicodeUtil;->access$600(II)I

    move-result v6

    if-ne v6, v7, :cond_4

    invoke-virtual {v0, v5}, Lnu/xom/UnicodeUtil$UnicodeString;->append(I)V

    #calls: Lnu/xom/UnicodeUtil;->isStarter(I)Z
    invoke-static {v5}, Lnu/xom/UnicodeUtil;->access$500(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v2, v0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    sub-int/2addr v2, v9

    move v3, v1

    move v4, v5

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aput v6, v4, v3

    iget-object v4, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aput v8, v4, v1

    iget-object v4, v0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aput v6, v4, v2

    move v4, v6

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method decompose()Lnu/xom/UnicodeUtil$UnicodeString;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lnu/xom/UnicodeUtil$UnicodeString;

    iget v1, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    invoke-direct {v0, v1}, Lnu/xom/UnicodeUtil$UnicodeString;-><init>(I)V

    move v1, v3

    :goto_0
    iget v2, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aget v2, v2, v1

    #calls: Lnu/xom/UnicodeUtil;->decompose(I)Ljava/lang/String;
    invoke-static {v2}, Lnu/xom/UnicodeUtil;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnu/xom/UnicodeUtil$UnicodeString;->append(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_1
    iget v2, v0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    iget-object v2, v0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aget v2, v2, v1

    iget-object v3, v0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    #calls: Lnu/xom/UnicodeUtil;->getCombiningClass(I)I
    invoke-static {v3}, Lnu/xom/UnicodeUtil;->access$200(I)I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    #calls: Lnu/xom/UnicodeUtil;->getCombiningClass(I)I
    invoke-static {v2}, Lnu/xom/UnicodeUtil;->access$200(I)I

    move-result v5

    if-le v5, v4, :cond_1

    iget-object v4, v0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aput v3, v4, v1

    iget-object v3, v0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v4

    add-int/lit8 v1, v1, -0x2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnu/xom/UnicodeUtil$UnicodeString;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnu/xom/UnicodeUtil$UnicodeString;->data:[I

    aget v2, v2, v1

    const v3, 0xffff

    if-gt v2, v3, :cond_0

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    #calls: Lnu/xom/UnicodeUtil;->makeSurrogatePair(I)Ljava/lang/String;
    invoke-static {v2}, Lnu/xom/UnicodeUtil;->access$700(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
