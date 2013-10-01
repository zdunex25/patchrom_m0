.class public Lcom/android/gallery3d/filtershow/PanelController;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/PanelController$ViewType;,
        Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;,
        Lcom/android/gallery3d/filtershow/PanelController$Panel;
    }
.end annotation


# static fields
.field private static COMPONENT:I

.field private static HORIZONTAL_MOVE:I

.field private static PANEL:I

.field private static VERTICAL_MOVE:I


# instance fields
.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private mCurrentPanel:Landroid/view/View;

.field private mDisableFilterButtons:Z

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private final mPanels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/filtershow/PanelController$Panel;",
            ">;"
        }
    .end annotation
.end field

.field private mRowPanel:Landroid/view/View;

.field private mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

.field private final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/filtershow/PanelController$ViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    sput v0, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    .line 54
    sput v1, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    .line 55
    sput v0, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    .line 56
    sput v1, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    .line 304
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    .line 305
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    .line 306
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 307
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    .line 308
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 309
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 310
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    return-object v0
.end method

.method private showCropPopupMenu(Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
    .locals 4
    .parameter "anchor"

    .prologue
    .line 561
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 562
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120005

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 563
    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/PanelController$2;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 570
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 571
    return-void
.end method

.method private showCurvesPopupMenu(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
    .locals 4
    .parameter "curves"
    .parameter "anchor"

    .prologue
    .line 547
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 548
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120006

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 549
    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/filtershow/PanelController$1;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 557
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 558
    return-void
.end method


# virtual methods
.method public addComponent(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "aPanel"
    .parameter "component"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 329
    .local v0, panel:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->addView(Landroid/view/View;)V

    .line 333
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v2, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v3, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v2, p0, p2, v3}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addImageView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 339
    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 340
    .local v0, imageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setPanelController(Lcom/android/gallery3d/filtershow/PanelController;)V

    .line 341
    return-void
.end method

.method public addPanel(Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "container"
    .parameter "position"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/PanelController$Panel;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 317
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method

.method public ensureFilter(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    .line 480
    .local v2, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 481
    .local v1, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    if-eqz v1, :cond_0

    .line 484
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 485
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 486
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 487
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 490
    .end local v0           #copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0151

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 494
    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0147

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 496
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 498
    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0152

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 500
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 502
    :cond_3
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0149

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 504
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 506
    :cond_4
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a014a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 508
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 510
    :cond_5
    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a014c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 512
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 514
    :cond_6
    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a014d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 516
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 518
    :cond_7
    if-nez v1, :cond_8

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a014f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 520
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 522
    :cond_8
    if-nez v1, :cond_9

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0148

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 524
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 526
    :cond_9
    if-nez v1, :cond_a

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a014b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 528
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 530
    :cond_a
    if-nez v1, :cond_b

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0150

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 533
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 535
    :cond_b
    if-nez v1, :cond_c

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0153

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 537
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 539
    :cond_c
    if-nez v1, :cond_d

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a014e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 541
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 543
    :cond_d
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 544
    return-void
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 357
    :cond_0
    const/4 v2, 0x1

    .line 369
    :cond_1
    :goto_0
    return v2

    .line 359
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 360
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->undo()I

    move-result v1

    .line 361
    .local v1, position:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 362
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 363
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 364
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->enableFilterButtons()V

    .line 366
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    .line 367
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    .line 401
    .local v0, type:Lcom/android/gallery3d/filtershow/PanelController$ViewType;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    if-ne v1, v2, :cond_1

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    if-ne v1, v2, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onNewValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->onNewValue(I)V

    .line 374
    return-void
.end method

.method public resetParameters()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->enableFilterButtons()V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 353
    :cond_1
    return-void
.end method

.method public setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 314
    return-void
.end method

.method public setCurrentPanel(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 382
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 2
    .parameter "filter"
    .parameter "name"

    .prologue
    .line 470
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 471
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 472
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 473
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 474
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 475
    return-object p1
.end method

.method public setMasterImage(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0
    .parameter "imageShow"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 396
    return-void
.end method

.method public setRowPanel(Landroid/view/View;)V
    .locals 0
    .parameter "rowPanel"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 386
    return-void
.end method

.method public setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .parameter "context"
    .parameter "utilityPanel"
    .parameter "textView"
    .parameter "aspectButton"
    .parameter "curvesButton"

    .prologue
    .line 390
    new-instance v0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    .line 392
    return-void
.end method

.method public showComponent(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const v10, 0x7f10002a

    const/4 v9, 0x0

    const v8, 0x7f100025

    const/4 v7, 0x1

    .line 574
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 575
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 576
    .local v2, current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    const/4 v5, -0x1

    sget v6, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v2, v5, v6}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 577
    .local v0, anim1:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 578
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v5, :cond_0

    .line 579
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->select()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 580
    .local v1, anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 584
    .end local v0           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v1           #anim2:Landroid/view/ViewPropertyAnimator;
    .end local v2           #current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f100034

    if-ne v5, v6, :cond_1

    .line 585
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 586
    .local v3, curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    check-cast p1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    .end local p1
    invoke-direct {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showCurvesPopupMenu(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    .line 748
    .end local v3           #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    :goto_0
    return-void

    .line 590
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f100033

    if-ne v5, v6, :cond_2

    .line 591
    check-cast p1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showCropPopupMenu(Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    goto :goto_0

    .line 595
    .restart local p1
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v5, :cond_3

    .line 596
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->unselect()V

    .line 598
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->hideAspectButtons()V

    .line 599
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->hideCurvesButtons()V

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 747
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    goto :goto_0

    .line 602
    :pswitch_1
    const v5, 0x7f10002d

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 603
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0147

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    .line 606
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    if-nez v5, :cond_4

    .line 607
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->disableFilterButtons()V

    .line 608
    iput-boolean v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    goto :goto_1

    .line 613
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_2
    const v5, 0x7f100026

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 614
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0154

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 615
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    goto :goto_1

    .line 619
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_3
    const v5, 0x7f100027

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 620
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0155

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 621
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 622
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 623
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    iget-boolean v5, v5, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    if-eqz v5, :cond_5

    .line 624
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 625
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    iput-boolean v9, v5, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    .line 627
    :cond_5
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showAspectButtons()V

    goto/16 :goto_1

    .line 631
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_4
    const v5, 0x7f100028

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 632
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0156

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 633
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 637
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_5
    const v5, 0x7f100029

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 638
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0157

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 639
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 640
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    goto/16 :goto_1

    .line 644
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 645
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0152

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 646
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 651
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 652
    .restart local v3       #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0151

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 653
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 654
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 655
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showCurvesButtons()V

    .line 656
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 657
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 661
    .end local v3           #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_8
    const v5, 0x7f10002c

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 662
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0149

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 663
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 668
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 669
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a014a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 670
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 675
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 676
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a014c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 677
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 682
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 683
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a014d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 684
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 689
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 690
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a014e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 691
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 692
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 693
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 697
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 698
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a014f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 699
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 704
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 705
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0148

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 706
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 711
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 712
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a014b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 713
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 718
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 719
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0150

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 720
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 725
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 726
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0153

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 727
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 732
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_12
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showAspectButtons()V

    goto/16 :goto_1

    .line 736
    :pswitch_13
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v5

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    if-eqz v5, :cond_6

    .line 737
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto/16 :goto_1

    .line 739
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    if-eqz v5, :cond_7

    .line 740
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 742
    :cond_7
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    goto/16 :goto_1

    .line 600
    :pswitch_data_0
    .packed-switch 0x7f100033
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_e
        :pswitch_6
        :pswitch_9
        :pswitch_10
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public showDefaultImageView()V
    .locals 2

    .prologue
    .line 422
    const v0, 0x7f100025

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 424
    return-void
.end method

.method public showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 4
    .parameter "id"

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 410
    .local v1, image:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 411
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 412
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v2

    .line 413
    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    goto :goto_0

    .line 415
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 418
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method public showPanel(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, -0x1

    .line 427
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 428
    const/4 v6, 0x0

    .line 429
    .local v6, removedUtilityPanel:Z
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 430
    .local v3, current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->unselect()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 432
    .local v1, anim1:Landroid/view/ViewPropertyAnimator;
    const/4 v6, 0x1

    .line 433
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 434
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_0

    .line 435
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v3, v9, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 436
    .local v2, anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 437
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->showDefaultImageView()V

    .line 441
    .end local v1           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v2           #anim2:Landroid/view/ViewPropertyAnimator;
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_1

    .line 463
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 446
    .local v5, panel:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    if-nez v6, :cond_4

    .line 447
    const/4 v4, -0x1

    .line 448
    .local v4, currentPos:I
    if-eqz v3, :cond_2

    .line 449
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->getPosition()I

    move-result v4

    .line 451
    :cond_2
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v5, v4, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 452
    .restart local v1       #anim1:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 453
    if-eqz v3, :cond_3

    .line 454
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->getPosition()I

    move-result v7

    sget v8, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v3, v7, v8}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 455
    .restart local v2       #anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 461
    .end local v1           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v2           #anim2:Landroid/view/ViewPropertyAnimator;
    .end local v4           #currentPos:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->showDefaultImageView()V

    .line 462
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    goto :goto_0

    .line 458
    :cond_4
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v5, v9, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 459
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method
