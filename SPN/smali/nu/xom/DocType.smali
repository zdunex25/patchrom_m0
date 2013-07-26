.class public Lnu/xom/DocType;
.super Lnu/xom/Node;


# instance fields
.field private internalDTDSubset:Ljava/lang/String;

.field private publicID:Ljava/lang/String;

.field private rootName:Ljava/lang/String;

.field private systemID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lnu/xom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnu/xom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnu/xom/DocType;->_setRootElementName(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lnu/xom/DocType;->_setSystemID(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lnu/xom/DocType;->_setPublicID(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/DocType;)V
    .locals 1

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/DocType;->publicID:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/DocType;->publicID:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/DocType;->systemID:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/DocType;->systemID:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/DocType;->rootName:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/DocType;->rootName:Ljava/lang/String;

    return-void
.end method

.method private _setPublicID(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnu/xom/DocType;->systemID:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lnu/xom/WellformednessException;

    const-string v1, "Cannot have a public ID without a system ID"

    invoke-direct {v0, v1}, Lnu/xom/WellformednessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnu/xom/Verifier;->isXMLSpaceCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lnu/xom/IllegalDataException;

    const-string v1, "Initial white space in public IDs is not round trippable."

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sub-int v1, v0, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnu/xom/Verifier;->isXMLSpaceCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lnu/xom/IllegalDataException;

    const-string v1, "Trailing white space in public IDs is not round trippable."

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnu/xom/DocType;->isXMLPublicIDCharacter(C)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Lnu/xom/IllegalDataException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The character 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not allowed in public IDs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne v2, v5, :cond_4

    sub-int v2, v1, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4

    new-instance v0, Lnu/xom/IllegalDataException;

    const-string v1, "Multiple consecutive spaces in public IDs are not round trippable."

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lnu/xom/DocType;->publicID:Ljava/lang/String;

    return-void
.end method

.method private _setRootElementName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnu/xom/Verifier;->checkXMLName(Ljava/lang/String;)V

    iput-object p1, p0, Lnu/xom/DocType;->rootName:Ljava/lang/String;

    return-void
.end method

.method private _setSystemID(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lnu/xom/DocType;->publicID:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lnu/xom/WellformednessException;

    const-string v1, "Cannot remove system ID without removing public ID first"

    invoke-direct {v0, v1}, Lnu/xom/WellformednessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lnu/xom/Verifier;->checkURIReference(Ljava/lang/String;)V

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Lnu/xom/MalformedURIException;

    const-string v1, "System literals cannot contain fragment identifiers"

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/MalformedURIException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lnu/xom/DocType;->systemID:Ljava/lang/String;

    return-void
.end method

.method static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/DocType;
    .locals 1

    new-instance v0, Lnu/xom/DocType;

    invoke-direct {v0}, Lnu/xom/DocType;-><init>()V

    iput-object p1, v0, Lnu/xom/DocType;->publicID:Ljava/lang/String;

    iput-object p2, v0, Lnu/xom/DocType;->systemID:Ljava/lang/String;

    iput-object p0, v0, Lnu/xom/DocType;->rootName:Ljava/lang/String;

    return-object v0
.end method

.method private static isXMLPublicIDCharacter(C)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public copy()Lnu/xom/Node;
    .locals 1

    new-instance v0, Lnu/xom/DocType;

    invoke-direct {v0, p0}, Lnu/xom/DocType;-><init>(Lnu/xom/DocType;)V

    return-object v0
.end method

.method final fastSetInternalDTDSubset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    return-void
.end method

.method public final getChild(I)Lnu/xom/Node;
    .locals 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Document type declarations do not have children"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getInternalDTDSubset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/DocType;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public final getRootElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/DocType;->rootName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSystemID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/DocType;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method isDocType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setInternalDTDSubset(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lnu/xom/Verifier;->checkInternalDTDSubset(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnu/xom/DocType;->fastSetInternalDTDSubset(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPublicID(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/DocType;->_setPublicID(Ljava/lang/String;)V

    return-void
.end method

.method public setRootElementName(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/DocType;->_setRootElementName(Ljava/lang/String;)V

    return-void
.end method

.method public setSystemID(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/DocType;->_setSystemID(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/DocType;->rootName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toXML()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x22

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<!DOCTYPE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/DocType;->rootName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/DocType;->publicID:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/DocType;->publicID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/DocType;->systemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    iget-object v1, p0, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/DocType;->internalDTDSubset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lnu/xom/DocType;->systemID:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " SYSTEM \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/DocType;->systemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
