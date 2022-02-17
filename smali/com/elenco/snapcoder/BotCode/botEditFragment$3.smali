.class Lcom/elenco/snapcoder/BotCode/botEditFragment$3;
.super Ljava/lang/Object;
.source "botEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/botEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/botEditFragment;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$3;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$3;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedToggle:Landroid/widget/ImageView;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$3;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    const-string v1, "Fast"

    iput-object v1, v0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    .line 235
    return-void
.end method
