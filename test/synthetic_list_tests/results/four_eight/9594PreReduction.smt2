
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
