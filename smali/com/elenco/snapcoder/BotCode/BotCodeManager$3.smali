.class final Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;
.super Ljava/lang/Object;
.source "BotCodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/BotCodeManager;->setRowHighlight(Landroid/widget/LinearLayout;Lcom/elenco/snapcoder/BotCode/BotCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$botCommand:Lcom/elenco/snapcoder/BotCode/BotCommand;

.field final synthetic val$codeViewBay:Landroid/widget/LinearLayout;

.field final synthetic val$uiCommandList:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Lcom/elenco/snapcoder/BotCode/BotCommand;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$uiCommandList:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$botCommand:Lcom/elenco/snapcoder/BotCode/BotCommand;

    iput-object p3, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$codeViewBay:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 330
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$uiCommandList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$botCommand:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getListOrdinal()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$uiCommandList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$botCommand:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getListOrdinal()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$codeViewBay:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->alreadyUsedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$botCommand:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getListOrdinal()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    sget-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->alreadyUsedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$botCommand:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getListOrdinal()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;->val$codeViewBay:Landroid/widget/LinearLayout;

    sget v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uniqueCount:I

    sget v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commentCount:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, v4}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->turnVisible(Landroid/widget/LinearLayout;IZ)V

    .line 337
    sget v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uniqueCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uniqueCount:I

    .line 340
    :cond_0
    return-void
.end method
