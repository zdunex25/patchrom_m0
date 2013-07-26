.class Lnu/xom/Builder$ValidityRequired;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidityRequired"
.end annotation


# instance fields
.field vexception:Lnu/xom/ValidityException;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnu/xom/Builder$ValidityRequired;->vexception:Lnu/xom/ValidityException;

    return-void
.end method

.method synthetic constructor <init>(Lnu/xom/Builder$1;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/Builder$ValidityRequired;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 6

    iget-object v0, p0, Lnu/xom/Builder$ValidityRequired;->vexception:Lnu/xom/ValidityException;

    if-nez v0, :cond_0

    new-instance v0, Lnu/xom/ValidityException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnu/xom/ValidityException;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Throwable;)V

    iput-object v0, p0, Lnu/xom/Builder$ValidityRequired;->vexception:Lnu/xom/ValidityException;

    :cond_0
    iget-object v0, p0, Lnu/xom/Builder$ValidityRequired;->vexception:Lnu/xom/ValidityException;

    invoke-virtual {v0, p1}, Lnu/xom/ValidityException;->addError(Lorg/xml/sax/SAXParseException;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    throw p1
.end method

.method isValid()Z
    .locals 1

    iget-object v0, p0, Lnu/xom/Builder$ValidityRequired;->vexception:Lnu/xom/ValidityException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnu/xom/Builder$ValidityRequired;->vexception:Lnu/xom/ValidityException;

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    return-void
.end method
