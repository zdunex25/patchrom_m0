.class public Lnu/xom/ValidityException;
.super Lnu/xom/ParsingException;


# static fields
.field private static final serialVersionUID:J = 0x7c3654b99f64631fL


# instance fields
.field private transient document:Lnu/xom/Document;

.field private saxExceptions:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;IILjava/lang/Throwable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Throwable;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Throwable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addError(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    iget-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getColumnNumber(I)I
    .locals 1

    iget-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getDocument()Lnu/xom/Document;
    .locals 1

    iget-object v0, p0, Lnu/xom/ValidityException;->document:Lnu/xom/Document;

    return-object v0
.end method

.method public getErrorCount()I
    .locals 1

    iget-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLineNumber(I)I
    .locals 1

    iget-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getValidityError(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/ValidityException;->saxExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setDocument(Lnu/xom/Document;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/ValidityException;->document:Lnu/xom/Document;

    return-void
.end method
