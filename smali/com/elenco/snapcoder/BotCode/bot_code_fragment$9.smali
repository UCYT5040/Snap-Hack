.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$9;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$9;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$9;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-boolean v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isScrolling:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$9;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->scrollViewMoved:Z

    .line 285
    :cond_0
    return-void
.end method
