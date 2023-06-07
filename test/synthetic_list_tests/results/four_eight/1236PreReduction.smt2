
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
(assert (and (= l2 Nil) (= l3 l3)) )
(assert (= l2 Nil) )
(assert (is-Cons l1) )
(assert (not (is-Nil l0)) )
(assert (is-Nil l1) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Cons l3) (is-Cons Nil)) )
(check-sat)
