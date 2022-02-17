.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$39;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

.field final synthetic val$command:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$39;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$39;->val$command:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$39;->val$command:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$39;->val$command:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1208
    return-void
.end method
