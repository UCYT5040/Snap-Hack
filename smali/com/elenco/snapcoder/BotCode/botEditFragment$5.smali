.class Lcom/elenco/snapcoder/BotCode/botEditFragment$5;
.super Ljava/lang/Object;
.source "botEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/botEditFragment;->LoadInBots()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

.field final synthetic val$botImageClone:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/botEditFragment;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/botEditFragment;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$5;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$5;->val$botImageClone:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$5;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$5;->val$botImageClone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->BotChosen(Landroid/widget/ImageButton;)V

    .line 426
    return-void
.end method
