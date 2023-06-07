
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
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Cons l1)) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
