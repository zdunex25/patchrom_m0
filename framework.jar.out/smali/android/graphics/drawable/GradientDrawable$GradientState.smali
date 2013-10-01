.class final Landroid/graphics/drawable/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GradientState"
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field public mChangingConfigurations:I

.field public mColors:[I

.field public mGradient:I

.field private mGradientRadius:F

.field public mHasSolidColor:Z

.field public mHeight:I

.field public mInnerRadius:I

.field public mInnerRadiusRatio:F

.field private mOpaque:Z

.field public mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public mPadding:Landroid/graphics/Rect;

.field public mPositions:[F

.field public mRadius:F

.field public mRadiusArray:[F

.field public mShape:I

.field public mSolidColor:I

.field public mStrokeColor:I

.field public mStrokeDashGap:F

.field public mStrokeDashWidth:F

.field public mStrokeWidth:I

.field public mTempColors:[I

.field public mTempPositions:[F

.field public mThickness:I

.field public mThicknessRatio:F

.field private mUseLevel:Z

.field private mUseLevelForShape:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f00

    .line 1108
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1074
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1075
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1083
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1090
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1091
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1096
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1097
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1098
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1109
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1110
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1111
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1112
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1113
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 1116
    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 1119
    :cond_1
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 1120
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    .line 1121
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1122
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 1123
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 1124
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1125
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1126
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_2

    .line 1127
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1129
    :cond_2
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1130
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1132
    :cond_3
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1133
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1134
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 1135
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1136
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1137
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1138
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1139
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1140
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1141
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 1142
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 1143
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    .line 1144
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 3
    .parameter "orientation"
    .parameter "colors"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f00

    .line 1103
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1074
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1075
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1083
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1090
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1091
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1096
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1097
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1098
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1104
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1105
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setColors([I)V

    .line 1106
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1072
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1072
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1072
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1072
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    return p1
.end method

.method static synthetic access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1072
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return v0
.end method

.method static synthetic access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1072
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method static synthetic access$302(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1072
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return p1
.end method

.method static synthetic access$400(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1072
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method static synthetic access$402(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1072
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return p1
.end method

.method static synthetic access$500(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1072
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    return v0
.end method

.method static synthetic access$502(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1072
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    return p1
.end method

.method static synthetic access$600(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1072
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method private computeOpacity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1189
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-eqz v1, :cond_0

    .line 1190
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    .line 1219
    :goto_0
    return-void

    .line 1194
    :cond_0
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v1, :cond_2

    .line 1195
    :cond_1
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0

    .line 1199
    :cond_2
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v1, :cond_3

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->isOpaque(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1200
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0

    .line 1204
    :cond_3
    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    if-eqz v1, :cond_4

    .line 1205
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->isOpaque(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0

    .line 1209
    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    if-eqz v1, :cond_6

    .line 1210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 1211
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->isOpaque(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1212
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0

    .line 1210
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1218
    .end local v0           #i:I
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0
.end method

.method private static isOpaque(I)Z
    .locals 2
    .parameter "color"

    .prologue
    .line 1222
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1148
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 1153
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object v0
.end method

.method public setColors([I)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 1177
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 1178
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1179
    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1
    .parameter "radii"

    .prologue
    .line 1248
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1249
    if-nez p1, :cond_0

    .line 1250
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1252
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .parameter "radius"

    .prologue
    .line 1240
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1241
    const/4 p1, 0x0

    .line 1243
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1244
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1245
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1171
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1172
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1173
    return-void
.end method

.method public setGradientRadius(F)V
    .locals 0
    .parameter "gradientRadius"

    .prologue
    .line 1260
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1261
    return-void
.end method

.method public setGradientType(I)V
    .locals 0
    .parameter "gradient"

    .prologue
    .line 1167
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1168
    return-void
.end method

.method public setShape(I)V
    .locals 0
    .parameter "shape"

    .prologue
    .line 1162
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1163
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1164
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1255
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1256
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1257
    return-void
.end method

.method public setSolidColor(I)V
    .locals 1
    .parameter "argb"

    .prologue
    .line 1182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 1183
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    .line 1184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 1185
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1186
    return-void
.end method

.method public setStroke(II)V
    .locals 0
    .parameter "width"
    .parameter "color"

    .prologue
    .line 1226
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1227
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 1228
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1229
    return-void
.end method

.method public setStroke(IIFF)V
    .locals 0
    .parameter "width"
    .parameter "color"
    .parameter "dashWidth"
    .parameter "dashGap"

    .prologue
    .line 1232
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1233
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 1234
    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 1235
    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1236
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1237
    return-void
.end method
