.class Lcom/android/internal/widget/ActionBarView$Injector;
.super Ljava/lang/Object;
.source "ActionBarView.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createActionMenuPresenter(Landroid/content/Context;)Lcom/android/internal/view/menu/ActionMenuPresenter;
    .locals 4
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;

    const v1, 0x6030020

    const v2, 0x603001d

    const v3, 0x603001f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;III)V

    .line 81
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
