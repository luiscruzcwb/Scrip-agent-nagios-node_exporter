<p style="text-align: center;"><strong>Script para Nagios Agent e Nodeexporter Agent</strong></p>
<p><br />Script que executa a instala&ccedil;&atilde;o dos agentes utilizados pelo <span style="text-decoration: underline;"><strong>NAGIOS</strong> </span>e <span style="text-decoration: underline;"><strong>PROMETHEUS</strong> </span>para envio de m&eacute;tricas.&nbsp;</p>
<p>&nbsp;</p>
<p data-pm-slice="1 1 []"><strong>Instala&ccedil;&atilde;o:</strong></p>
<ul class="ak-ul">
<li>
<p>Acesse a instancia que ser&aacute; monitorada;</p>
</li>
<li>
<p><em><strong>Downalod: </strong></em></p>
</li>
</ul>
<pre><code>wget https://github.com/luiscruzcwb/Script-Nagios-Agent-e-Nodeexporter-Agent/archive/refs/heads/main.zip</code></pre>
<ul class="ak-ul">
<li>
<p><em><strong>Descompactar:&nbsp;</strong></em></p>
</li>
</ul>
<pre><code>unzip main.zip&nbsp;</code></pre>
<ul class="ak-ul">
<li>
<p><em><strong>Acesse o diret&oacute;rio:&nbsp;</strong></em></p>
</li>
</ul>
<pre><code>cd Script-Nagios-Agent-e-Nodeexporter-Agent-main</code></pre>
<ul class="ak-ul">
<li>
<p><strong>Antes de instalar, altere o arquivo do </strong><em><strong>agente_nagios</strong></em><strong> para os seus par&acirc;metros</strong></p>
<ul class="ak-ul">
<li>
<p><em><u>install_agent_nagios.sh - Alterar o IP do Servidor (NagiosIP=xx.xx.xx.xx)</u></em></p>
</li>
</ul>
</li>
</ul>
<ul class="ak-ul">
<li>
<p><em><strong>Instale:</strong></em></p>
</li>
</ul>
<pre><code>sh install_agent_nagios.sh</code></pre>
<pre><code>sh install_node_exporter.sh</code></pre>
<ul class="ak-ul">
<li>
<p><em><strong>Portas que precisam estar liberadas na inst&acirc;ncia:</strong></em></p>
</li>
</ul>
<pre><code>9100</code></pre>
<p>Para mais informa&ccedil;&otilde;es:</p>
<p><a href="https://prometheus.io/docs/guides/node-exporter/">https://prometheus.io/docs/guides/node-exporter/</a></p>
<p><a href="https://github.com/prometheus/node_exporter">https://github.com/prometheus/node_exporter</a></p>
<p>&nbsp;</p>
