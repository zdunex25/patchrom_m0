.class public Lnu/xom/jaxen/saxpath/base/XPathReader;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/saxpath/XPathReader;


# static fields
.field private static defaultHandler:Lnu/xom/jaxen/saxpath/XPathHandler;


# instance fields
.field private handler:Lnu/xom/jaxen/saxpath/XPathHandler;

.field private lexer:Lnu/xom/jaxen/saxpath/base/XPathLexer;

.field private tokens:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnu/xom/jaxen/saxpath/helpers/DefaultXPathHandler;

    invoke-direct {v0}, Lnu/xom/jaxen/saxpath/helpers/DefaultXPathHandler;-><init>()V

    sput-object v0, Lnu/xom/jaxen/saxpath/base/XPathReader;->defaultHandler:Lnu/xom/jaxen/saxpath/XPathHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnu/xom/jaxen/saxpath/base/XPathReader;->defaultHandler:Lnu/xom/jaxen/saxpath/XPathHandler;

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->setXPathHandler(Lnu/xom/jaxen/saxpath/XPathHandler;)V

    return-void
.end method

.method private LA(I)I
    .locals 1

    invoke-direct {p0, p1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LT(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenType()I

    move-result v0

    return v0
.end method

.method private LT(I)Lnu/xom/jaxen/saxpath/base/Token;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v1, p1, v3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->lexer:Lnu/xom/jaxen/saxpath/base/XPathLexer;

    invoke-virtual {v2}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->nextToken()Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    sub-int v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/jaxen/saxpath/base/Token;

    return-object p0
.end method

.method private abbrStep()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicates()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicates()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private absoluteLocationPath()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/16 v2, 0xc

    const/4 v1, 0x1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAbsoluteLocationPath()V

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAbsoluteLocationPath()V

    return-void

    :pswitch_0
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->steps()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v2}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_4
    const-string v0, "Location path cannot end with //"

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0

    :pswitch_5
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->steps()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private additiveExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x7

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->multiplicativeExpr()V

    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAdditiveExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->multiplicativeExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAdditiveExpr(I)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAdditiveExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->multiplicativeExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v2}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAdditiveExpr(I)V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private andExpr()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAndExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->equalityExpr()V

    const/4 v0, 0x0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAndExpr(Z)V

    return-void

    :pswitch_0
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->andExpr()V

    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method private arguments()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/16 v3, 0x1e

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->expr()V

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private axisSpecifier()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v0, 0x9

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LT(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnu/xom/jaxen/saxpath/Axis;->lookup(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->throwInvalidAxis(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;
    .locals 3

    iget-object v0, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->lexer:Lnu/xom/jaxen/saxpath/base/XPathLexer;

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LT(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenBegin()I

    move-result v1

    new-instance v2, Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    invoke-direct {v2, v0, v1, p1}, Lnu/xom/jaxen/saxpath/XPathSyntaxException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method

.method private equalityExpr()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->relationalExpr()V

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startEqualityExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->relationalExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->endEqualityExpr(I)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startEqualityExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->relationalExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v2}, Lnu/xom/jaxen/saxpath/XPathHandler;->endEqualityExpr(I)V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private expr()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->orExpr()V

    return-void
.end method

.method private filterExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startFilterExpr()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicates()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endFilterExpr()V

    return-void

    :sswitch_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lnu/xom/jaxen/saxpath/XPathHandler;->number(D)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->literal()V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->expr()V

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->functionCall()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->variableReference()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_3
        0x17 -> :sswitch_2
        0x19 -> :sswitch_4
        0x1a -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method private functionCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/16 v2, 0x13

    const/16 v1, 0x10

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    :goto_0
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->startFunction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->arguments()V

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endFunction()V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private isNodeTypeName(Lnu/xom/jaxen/saxpath/base/Token;)Z
    .locals 2

    invoke-virtual {p1}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "node"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "comment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "processing-instruction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private literal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->literal(Ljava/lang/String;)V

    return-void
.end method

.method private match(I)Lnu/xom/jaxen/saxpath/base/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/XPathSyntaxException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LT(I)Lnu/xom/jaxen/saxpath/base/Token;

    iget-object v0, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenType()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lnu/xom/jaxen/saxpath/base/TokenTypes;->getTokenText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0
.end method

.method private multiplicativeExpr()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/16 v5, 0x1f

    const/4 v4, 0x1

    const/16 v3, 0xb

    const/16 v2, 0xa

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    invoke-direct {p0, v4}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    :goto_0
    if-eq v0, v5, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    invoke-direct {p0, v4}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, v5}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startMultiplicativeExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->endMultiplicativeExpr(I)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startMultiplicativeExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v3}, Lnu/xom/jaxen/saxpath/XPathHandler;->endMultiplicativeExpr(I)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startMultiplicativeExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v2}, Lnu/xom/jaxen/saxpath/XPathHandler;->endMultiplicativeExpr(I)V

    goto :goto_1

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xb -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private nameTest(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v0, v4

    :goto_1
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move-object v1, v4

    :goto_2
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->startNameStep(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicates()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endNameStep()V

    return-void

    :pswitch_0
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    goto :goto_1

    :sswitch_0
    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_1
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    const-string v1, "*"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch
.end method

.method private nodeTest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "Expected <QName> or *"

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0

    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->nameTest(I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->nodeTypeTest(I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->nameTest(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method private nodeTypeTest(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/16 v3, 0x1a

    const/16 v2, 0x18

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    const-string v1, "processing-instruction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startProcessingInstructionNodeStep(ILjava/lang/String;)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicates()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endProcessingInstructionNodeStep()V

    :goto_0
    return-void

    :cond_1
    const-string v1, "node"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicates()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    goto :goto_0

    :cond_2
    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/saxpath/XPathHandler;->startTextNodeStep(I)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicates()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endTextNodeStep()V

    goto :goto_0

    :cond_3
    const-string v1, "comment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/saxpath/XPathHandler;->startCommentNodeStep(I)V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicates()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endCommentNodeStep()V

    goto :goto_0

    :cond_4
    const-string v0, "Expected node-type"

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0
.end method

.method private orExpr()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startOrExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->andExpr()V

    const/4 v0, 0x0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endOrExpr(Z)V

    return-void

    :pswitch_0
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->orExpr()V

    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method private pathExpr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v6, 0x2

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startPathExpr()V

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unexpected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LT(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->filterExpr()V

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    :cond_0
    const-string v0, "Node-set expected"

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0

    :pswitch_2
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->filterExpr()V

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endPathExpr()V

    return-void

    :pswitch_3
    invoke-direct {p0, v6}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_3

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LT(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->isNodeTypeName(Lnu/xom/jaxen/saxpath/base/Token;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, v6}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_6

    :cond_4
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->filterExpr()V

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    :cond_5
    invoke-virtual {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->locationPath(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private predicateExpr()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->expr()V

    return-void
.end method

.method private predicates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private relationalExpr()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    invoke-direct {p0, v5}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-direct {p0, v5}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startRelationalExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->endRelationalExpr(I)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startRelationalExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v3}, Lnu/xom/jaxen/saxpath/XPathHandler;->endRelationalExpr(I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v4}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startRelationalExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v4}, Lnu/xom/jaxen/saxpath/XPathHandler;->endRelationalExpr(I)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startRelationalExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->additiveExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v2}, Lnu/xom/jaxen/saxpath/XPathHandler;->endRelationalExpr(I)V

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private relativeLocationPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/16 v1, 0xc

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startRelativeLocationPath()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->steps()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endRelativeLocationPath()V

    return-void

    :pswitch_0
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private steps()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/16 v3, 0xd

    const/16 v2, 0xc

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "Expected one of \'.\', \'..\', \'@\', \'*\', <QName>"

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->step()V

    :goto_0
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_0
    const-string v0, "Expected one of \'.\', \'..\', \'@\', \'*\', <QName>"

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0, v2}, Lnu/xom/jaxen/saxpath/XPathHandler;->startAllNodeStep(I)V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endAllNodeStep()V

    invoke-direct {p0, v3}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->step()V

    goto :goto_0

    :cond_1
    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private throwInvalidAxis(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->lexer:Lnu/xom/jaxen/saxpath/base/XPathLexer;

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/XPathLexer;->getXPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LT(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenBegin()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected valid axis name instead of ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    invoke-direct {v3, v0, v1, v2}, Lnu/xom/jaxen/saxpath/XPathSyntaxException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v3
.end method

.method private unaryExpr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->unionExpr()V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startUnaryExpr()V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->unaryExpr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->endUnaryExpr(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private unionExpr()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startUnionExpr()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->pathExpr()V

    const/4 v0, 0x0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endUnionExpr(Z)V

    return-void

    :pswitch_0
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->expr()V

    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method private variableReference()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/16 v2, 0x13

    const/16 v1, 0x10

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    :goto_0
    invoke-direct {p0, v1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnu/xom/jaxen/saxpath/XPathHandler;->variableReference(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->handler:Lnu/xom/jaxen/saxpath/XPathHandler;

    return-object v0
.end method

.method locationPath(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unexpected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LT(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0

    :pswitch_1
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->absoluteLocationPath()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->relativeLocationPath()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->relativeLocationPath()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/saxpath/base/XPathReader;->setUpParse(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startXPath()V

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->expr()V

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endXPath()V

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unexpected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LT(I)Lnu/xom/jaxen/saxpath/base/Token;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->createSyntaxException(Ljava/lang/String;)Lnu/xom/jaxen/saxpath/XPathSyntaxException;

    move-result-object v0

    throw v0

    :cond_0
    iput-object v3, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->lexer:Lnu/xom/jaxen/saxpath/base/XPathLexer;

    iput-object v3, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    return-void
.end method

.method predicate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->startPredicate()V

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->predicateExpr()V

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->match(I)Lnu/xom/jaxen/saxpath/base/Token;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->getXPathHandler()Lnu/xom/jaxen/saxpath/XPathHandler;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/saxpath/XPathHandler;->endPredicate()V

    return-void
.end method

.method setUpParse(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->tokens:Ljava/util/ArrayList;

    new-instance v0, Lnu/xom/jaxen/saxpath/base/XPathLexer;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/saxpath/base/XPathLexer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->lexer:Lnu/xom/jaxen/saxpath/base/XPathLexer;

    return-void
.end method

.method public setXPathHandler(Lnu/xom/jaxen/saxpath/XPathHandler;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/saxpath/base/XPathReader;->handler:Lnu/xom/jaxen/saxpath/XPathHandler;

    return-void
.end method

.method step()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v2}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->nodeTest(I)V

    :goto_1
    return-void

    :pswitch_1
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->abbrStep()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->axisSpecifier()I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->LA(I)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lnu/xom/jaxen/saxpath/base/XPathReader;->axisSpecifier()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_4
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
