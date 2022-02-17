.class Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$5;
.super Ljava/lang/Object;
.source "FlyOutActivityMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$5;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$5;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    const-string v1, "info_key"

    iput-object v1, v0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->fragKey:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$5;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->access$000(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V

    .line 82
    return-void
.end method
