.class public Lnu/xom/ProcessingInstruction;
.super Lnu/xom/Node;


# instance fields
.field private data:Ljava/lang/String;

.field private target:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    invoke-direct {p0, p1}, Lnu/xom/ProcessingInstruction;->_setTarget(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lnu/xom/ProcessingInstruction;->_setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/ProcessingInstruction;)V
    .locals 1

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    iget-object v0, p1, Lnu/xom/ProcessingInstruction;->target:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/ProcessingInstruction;->target:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/ProcessingInstruction;->data:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/ProcessingInstruction;->data:Ljava/lang/String;

    return-void
.end method

.method private _setTarget(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lnu/xom/Verifier;->checkNCName(Ljava/lang/String;)V
    :try_end_0
    .catch Lnu/xom/IllegalNameException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnu/xom/IllegalTargetException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not a legal processing instruction target."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/IllegalTargetException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/IllegalTargetException;->setData(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/IllegalTargetException;

    invoke-virtual {v0}, Lnu/xom/IllegalNameException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/IllegalTargetException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lnu/xom/IllegalTargetException;->setData(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lnu/xom/ProcessingInstruction;->target:Ljava/lang/String;

    return-void
.end method

.method private _setValue(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lnu/xom/Verifier;->checkPCDATA(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "?>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lnu/xom/IllegalDataException;

    const-string v1, "Processing instruction data must not contain \"?>\""

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/IllegalDataException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v0, Lnu/xom/IllegalDataException;

    const-string v1, "Processing instruction data cannot contain carriage returns"

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/IllegalDataException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Lnu/xom/IllegalDataException;

    const-string v1, "Processing instruction data cannot contain leading white space"

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/IllegalDataException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lnu/xom/ProcessingInstruction;->data:Ljava/lang/String;

    return-void
.end method

.method static build(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/ProcessingInstruction;
    .locals 1

    new-instance v0, Lnu/xom/ProcessingInstruction;

    invoke-direct {v0}, Lnu/xom/ProcessingInstruction;-><init>()V

    iput-object p0, v0, Lnu/xom/ProcessingInstruction;->target:Ljava/lang/String;

    iput-object p1, v0, Lnu/xom/ProcessingInstruction;->data:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public copy()Lnu/xom/Node;
    .locals 3

    new-instance v0, Lnu/xom/ProcessingInstruction;

    iget-object v1, p0, Lnu/xom/ProcessingInstruction;->target:Ljava/lang/String;

    iget-object v2, p0, Lnu/xom/ProcessingInstruction;->data:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnu/xom/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getChild(I)Lnu/xom/Node;
    .locals 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "LeafNodes do not have children"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/ProcessingInstruction;->target:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/ProcessingInstruction;->data:Ljava/lang/String;

    return-object v0
.end method

.method isProcessingInstruction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/ProcessingInstruction;->_setTarget(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/ProcessingInstruction;->_setValue(Ljava/lang/String;)V

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

    const-string v1, ": target=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/ProcessingInstruction;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"; data=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/ProcessingInstruction;->data:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Text;->escapeLineBreaksAndTruncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toXML()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnu/xom/ProcessingInstruction;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/ProcessingInstruction;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/ProcessingInstruction;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
