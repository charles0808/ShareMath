# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@setupExpressionEditor = ->
    ExpressionPreview =
        preview: document.getElementById('formula-expression-preview')
        buffer: document.getElementById('formula-expression-buffer')
        SwapBuffers: ->
            buffer = @preview
            preview = @buffer
            @buffer = preview
            @preview = buffer
            buffer.style.visibility = 'hidden'
            preview.style.visibility = ''
        Update: (content) ->
            if content.length
                content = "$#{content}$"
                $(@buffer).removeClass('preview-placeholder')
            else
                content = '$\\rm\\LaTeX$ Expression'
                $(@buffer).addClass('preview-placeholder')
            @buffer.innerHTML = content
            MathJax.Hub.Queue(
                ['Typeset', MathJax.Hub, @buffer],
                ['PreviewDone', @]
            )
        PreviewDone: ->
            @SwapBuffers()
    editor = ace.edit('formula-expression-editor')
    textarea = $('textarea#formula_expression').hide()
    session = editor.getSession()
    LatexMode = ace.require('ace/mode/latex').Mode
    session.setMode(new LatexMode())
    session.on 'change', ->
        content = session.getValue()
        textarea.val(content)
        ExpressionPreview.Update(content)
    session.setValue(textarea.val())
    ExpressionPreview.Update(textarea.val())

@setupContentEditor = ->

