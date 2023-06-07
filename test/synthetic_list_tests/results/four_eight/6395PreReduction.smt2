
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
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (= l3 Nil) )
(assert (is-Nil l2) )
(assert (= l0 Nil) )
(assert (or (= l2 l3) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l1 Nil) (= l3 Nil)) )
(check-sat)
