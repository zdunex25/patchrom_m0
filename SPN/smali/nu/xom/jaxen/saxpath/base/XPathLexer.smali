.class Lnu/xom/jaxen/saxpath/base/XPathLexer;
.super Ljava/lang/Object;


# instance fields
.field private currentPosition:I

.field private endPosition:I

.field private expectOperator:Z

.field private xpath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->expectOperator:Z

    invoke-direct {p0, p1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->setXPath(Ljava/lang/String;)V

    return-void
.end method

.method private LA(I)C
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    sub-int v1, p1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->endPosition:I

    if-lt v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private and()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x1b

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    :cond_0
    return-object v0
.end method

.method private at()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x11

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private colon()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x13

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private comma()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x1e

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private consume()V
    .locals 1

    iget v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    return-void
.end method

.method private div()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_0

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0xb

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    :cond_0
    return-object v0
.end method

.method private dollar()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x19

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private dots()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0xe

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0xf

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method private doubleColon()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x14

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private equals()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private hasMoreChars()Z
    .locals 2

    iget v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v1, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->endPosition:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private identifier()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    iget v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    :goto_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    invoke-static {v1}, Lnu/xom/jaxen/saxpath/base/Verifier;->isXMLNCNameCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    :cond_0
    new-instance v1, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v2, 0x10

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    invoke-direct {v1, v2, v3, v0, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    return-object v1
.end method

.method private identifierOrOperatorName()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 1

    iget-boolean v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->expectOperator:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->operatorName()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->identifier()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0
.end method

.method private leftBracket()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x15

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private leftParen()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private literal()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v6}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    iget v2, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v6}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v3

    if-ne v3, v1, :cond_0

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v3, 0x1a

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    invoke-direct {v0, v3, v4, v2, v5}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    :cond_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private minus()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private mod()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0xa

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    :cond_0
    return-object v0
.end method

.method private notEquals()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private number()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    const/4 v3, 0x1

    iget v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    move v1, v3

    :goto_0
    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    new-instance v1, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v2, 0x1d

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    invoke-direct {v1, v2, v3, v0, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    return-object v1

    :pswitch_1
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private operatorName()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->and()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->or()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->mod()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->div()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x64 -> :sswitch_3
        0x6d -> :sswitch_2
        0x6f -> :sswitch_1
    .end sparse-switch
.end method

.method private or()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x1c

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    :cond_0
    return-object v0
.end method

.method private pipe()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x12

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private plus()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private relationalOperator()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    const/16 v3, 0x3d

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    :goto_1
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    :goto_2
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    :cond_1
    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private rightBracket()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x16

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private rightParen()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0x18

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v0
.end method

.method private setXPath(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->xpath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->endPosition:I

    return-void
.end method

.method private slashes()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v1, 0xd

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method private star()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 5

    iget-boolean v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->expectOperator:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    :goto_0
    new-instance v1, Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    return-object v1

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private whitespace()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    :goto_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->hasMoreChars()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    return-object v0

    :sswitch_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->consume()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method getXPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->xpath:Ljava/lang/String;

    return-object v0
.end method

.method nextToken()Lnu/xom/jaxen/saxpath/base/Token;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v5}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, v5}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    invoke-static {v1}, Lnu/xom/jaxen/saxpath/base/Verifier;->isXMLNCNameStartCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->identifierOrOperatorName()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->hasMoreChars()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->endPosition:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iput-boolean v5, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->expectOperator:Z

    :goto_2
    return-object v0

    :sswitch_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->dollar()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->literal()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->slashes()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->comma()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->leftParen()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->rightParen()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->leftBracket()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->rightBracket()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->plus()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->minus()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->relationalOperator()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->equals()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    invoke-direct {p0, v6}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->notEquals()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->pipe()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_e
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->at()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto :goto_0

    :sswitch_f
    invoke-direct {p0, v6}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->doubleColon()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->colon()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->star()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    invoke-direct {p0, v6}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->LA(I)C

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->dots()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->number()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->number()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->whitespace()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v1, -0x3

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->currentPosition:I

    iget v4, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->endPosition:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/saxpath/base/Token;-><init>(ILjava/lang/String;II)V

    goto/16 :goto_1

    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnu/xom/jaxen/saxpath/base/XPathLexer;->expectOperator:Z

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_13
        0xa -> :sswitch_13
        0xd -> :sswitch_13
        0x20 -> :sswitch_13
        0x21 -> :sswitch_c
        0x22 -> :sswitch_1
        0x24 -> :sswitch_0
        0x27 -> :sswitch_1
        0x28 -> :sswitch_4
        0x29 -> :sswitch_5
        0x2a -> :sswitch_10
        0x2b -> :sswitch_8
        0x2c -> :sswitch_3
        0x2d -> :sswitch_9
        0x2e -> :sswitch_11
        0x2f -> :sswitch_2
        0x30 -> :sswitch_12
        0x31 -> :sswitch_12
        0x32 -> :sswitch_12
        0x33 -> :sswitch_12
        0x34 -> :sswitch_12
        0x35 -> :sswitch_12
        0x36 -> :sswitch_12
        0x37 -> :sswitch_12
        0x38 -> :sswitch_12
        0x39 -> :sswitch_12
        0x3a -> :sswitch_f
        0x3c -> :sswitch_a
        0x3d -> :sswitch_b
        0x3e -> :sswitch_a
        0x40 -> :sswitch_e
        0x5b -> :sswitch_6
        0x5d -> :sswitch_7
        0x7c -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
