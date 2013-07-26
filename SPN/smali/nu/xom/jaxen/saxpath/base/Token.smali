.class Lnu/xom/jaxen/saxpath/base/Token;
.super Ljava/lang/Object;


# instance fields
.field private parseText:Ljava/lang/String;

.field private tokenBegin:I

.field private tokenEnd:I

.field private tokenType:I


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lnu/xom/jaxen/saxpath/base/Token;->setTokenType(I)V

    invoke-direct {p0, p2}, Lnu/xom/jaxen/saxpath/base/Token;->setParseText(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lnu/xom/jaxen/saxpath/base/Token;->setTokenBegin(I)V

    invoke-direct {p0, p4}, Lnu/xom/jaxen/saxpath/base/Token;->setTokenEnd(I)V

    return-void
.end method

.method private setParseText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/saxpath/base/Token;->parseText:Ljava/lang/String;

    return-void
.end method

.method private setTokenBegin(I)V
    .locals 0

    iput p1, p0, Lnu/xom/jaxen/saxpath/base/Token;->tokenBegin:I

    return-void
.end method

.method private setTokenEnd(I)V
    .locals 0

    iput p1, p0, Lnu/xom/jaxen/saxpath/base/Token;->tokenEnd:I

    return-void
.end method

.method private setTokenType(I)V
    .locals 0

    iput p1, p0, Lnu/xom/jaxen/saxpath/base/Token;->tokenType:I

    return-void
.end method


# virtual methods
.method getTokenBegin()I
    .locals 1

    iget v0, p0, Lnu/xom/jaxen/saxpath/base/Token;->tokenBegin:I

    return v0
.end method

.method getTokenEnd()I
    .locals 1

    iget v0, p0, Lnu/xom/jaxen/saxpath/base/Token;->tokenEnd:I

    return v0
.end method

.method getTokenText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnu/xom/jaxen/saxpath/base/Token;->parseText:Ljava/lang/String;

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenBegin()I

    move-result v1

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTokenType()I
    .locals 1

    iget v0, p0, Lnu/xom/jaxen/saxpath/base/Token;->tokenType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnu/xom/jaxen/saxpath/base/Token;->tokenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/saxpath/base/Token;->getTokenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
