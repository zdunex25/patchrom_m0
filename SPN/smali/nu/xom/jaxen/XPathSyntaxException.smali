.class public Lnu/xom/jaxen/XPathSyntaxException;
.super Lnu/xom/jaxen/JaxenException;


# static fields
.field private static final serialVersionUID:J = 0x1b7c82a1b6fdbf5bL


# instance fields
.field private position:I

.field private xpath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnu/xom/jaxen/XPathSyntaxException;->xpath:Ljava/lang/String;

    iput p2, p0, Lnu/xom/jaxen/XPathSyntaxException;->position:I

    return-void
.end method

.method public constructor <init>(Lnu/xom/jaxen/saxpath/XPathSyntaxException;)V
    .locals 1

    invoke-direct {p0, p1}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lnu/xom/jaxen/saxpath/XPathSyntaxException;->getXPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/XPathSyntaxException;->xpath:Ljava/lang/String;

    invoke-virtual {p1}, Lnu/xom/jaxen/saxpath/XPathSyntaxException;->getPosition()I

    move-result v0

    iput v0, p0, Lnu/xom/jaxen/XPathSyntaxException;->position:I

    return-void
.end method


# virtual methods
.method public getMultilineMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnu/xom/jaxen/XPathSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnu/xom/jaxen/XPathSyntaxException;->getXPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnu/xom/jaxen/XPathSyntaxException;->getPositionMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lnu/xom/jaxen/XPathSyntaxException;->position:I

    return v0
.end method

.method public getPositionMarker()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnu/xom/jaxen/XPathSyntaxException;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/XPathSyntaxException;->xpath:Ljava/lang/String;

    return-object v0
.end method
