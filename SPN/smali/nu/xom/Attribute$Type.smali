.class public final Lnu/xom/Attribute$Type;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation


# static fields
.field public static final CDATA:Lnu/xom/Attribute$Type;

.field public static final ENTITIES:Lnu/xom/Attribute$Type;

.field public static final ENTITY:Lnu/xom/Attribute$Type;

.field public static final ENUMERATION:Lnu/xom/Attribute$Type;

.field public static final ID:Lnu/xom/Attribute$Type;

.field public static final IDREF:Lnu/xom/Attribute$Type;

.field public static final IDREFS:Lnu/xom/Attribute$Type;

.field public static final NMTOKEN:Lnu/xom/Attribute$Type;

.field public static final NMTOKENS:Lnu/xom/Attribute$Type;

.field public static final NOTATION:Lnu/xom/Attribute$Type;

.field public static final UNDECLARED:Lnu/xom/Attribute$Type;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnu/xom/Attribute$Type;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->CDATA:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->IDREF:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->IDREFS:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->NMTOKEN:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->NMTOKENS:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->NOTATION:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->ENTITY:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->ENTITIES:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->ENUMERATION:Lnu/xom/Attribute$Type;

    new-instance v0, Lnu/xom/Attribute$Type;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnu/xom/Attribute$Type;-><init>(I)V

    sput-object v0, Lnu/xom/Attribute$Type;->UNDECLARED:Lnu/xom/Attribute$Type;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnu/xom/Attribute$Type;->type:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnu/xom/Attribute$Type;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nu.xom.Attribute.Type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnu/xom/Attribute$Type;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bug in XOM: unexpected attribute type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lnu/xom/Attribute$Type;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "UNDECLARED"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "CDATA"

    goto :goto_0

    :pswitch_2
    const-string v0, "ID"

    goto :goto_0

    :pswitch_3
    const-string v0, "IDREF"

    goto :goto_0

    :pswitch_4
    const-string v0, "IDREFS"

    goto :goto_0

    :pswitch_5
    const-string v0, "NMTOKEN"

    goto :goto_0

    :pswitch_6
    const-string v0, "NMTOKENS"

    goto :goto_0

    :pswitch_7
    const-string v0, "NOTATION"

    goto :goto_0

    :pswitch_8
    const-string v0, "ENTITY"

    goto :goto_0

    :pswitch_9
    const-string v0, "ENTITIES"

    goto :goto_0

    :pswitch_a
    const-string v0, "ENUMERATION"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnu/xom/Attribute$Type;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[Attribute.Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnu/xom/Attribute$Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
