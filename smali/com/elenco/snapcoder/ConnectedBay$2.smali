.class Lcom/elenco/snapcoder/ConnectedBay$2;
.super Ljava/lang/Object;
.source "ConnectedBay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ConnectedBay;->moveIcon(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/elenco/snapcoder/model/Bot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/ConnectedBay;

.field final synthetic val$bot:Lcom/elenco/snapcoder/model/Bot;

.field final synthetic val$botPicture:Landroid/widget/ImageView;

.field final synthetic val$finalBotRowView:Landroid/widget/TableRow;

.field final synthetic val$finalColor:Ljava/lang/String;

.field final synthetic val$finalName:Ljava/lang/String;

.field final synthetic val$setDisabledTable:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ConnectedBay;Landroid/widget/LinearLayout;Landroid/widget/TableRow;Lcom/elenco/snapcoder/model/Bot;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/ConnectedBay;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    iput-object p2, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$setDisabledTable:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalBotRowView:Landroid/widget/TableRow;

    iput-object p4, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$bot:Lcom/elenco/snapcoder/model/Bot;

    iput-object p5, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$botPicture:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalColor:Ljava/lang/String;

    iput-object p7, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v2, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$setDisabledTable:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalBotRowView:Landroid/widget/TableRow;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 191
    iget-object v2, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    invoke-static {v2}, Lcom/elenco/snapcoder/ConnectedBay;->access$000(Lcom/elenco/snapcoder/ConnectedBay;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalBotRowView:Landroid/widget/TableRow;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$bot:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f0801e9

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 195
    .local v1, "singleBotDash":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f080187

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 198
    .local v0, "multiBotDash":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$botPicture:Landroid/widget/ImageView;

    new-instance v3, Lcom/elenco/snapcoder/ConnectedBay$2$1;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/ConnectedBay$2$1;-><init>(Lcom/elenco/snapcoder/ConnectedBay$2;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method
