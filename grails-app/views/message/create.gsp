

<%@ page import="tekdays.Message" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list" id="${messageInstance?.event?.id}">Message List</g:link></span>
        </div>
        <div class="body">
            <h1>${messageInstance?.event?.name} Forum - New Message</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${messageInstance}">
            <div class="errors">
                <g:renderErrors bean="${messageInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>

                        <g:if test="${messageInstance.parent}">
                            <tr class="prop">
                                <td valign="top" class="name"> <label>In Reply to:</label>
                                </td>
                                <td valign="top" class="value">${messageInstance.parent.author}
                                </td>
                            </tr>
                        </g:if>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="subject">Subject:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:messageInstance,field:'subject','errors')}">
                                    <input type="text" class="messageField" id="subject" name="subject" value="${fieldValue(bean:messageInstance,field:'subject')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="content">Content:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:messageInstance,field:'content','errors')}">
                                    <textarea class="messageField" rows="5" cols="60" name="content">
                                        ${fieldValue(bean:messageInstance, field:'content')}
                                    </textarea>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="parent"><g:message code="message.parent.label" default="Parent" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: messageInstance, field: 'parent', 'errors')}">
                                    <g:select name="parent.id" from="${tekdays.Message.list()}" optionKey="id" value="${messageInstance?.parent?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="author"><g:message code="message.author.label" default="Author" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: messageInstance, field: 'author', 'errors')}">
                                    <g:select name="author.id" from="${tekdays.TekUser.list()}" optionKey="id" value="${messageInstance?.author?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="event"><g:message code="message.event.label" default="Event" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: messageInstance, field: 'event', 'errors')}">
                                    <input type="hidden" name="event.id" value="${messageInstance?.event?.id}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
