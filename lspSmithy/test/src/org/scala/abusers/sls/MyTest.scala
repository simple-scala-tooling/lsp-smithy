package org.scala.abusers.sls

import langoustine.lsp.aliases.*
import langoustine.lsp.runtime.*
import langoustine.lsp.structures.*
import org.scala.abusers.sls.LspNioConverter.asNio
import weaver.SimpleIOSuite

object MyTest extends SimpleIOSuite:

  pureTest("first case") {
    expect(1 == 1)
  }
