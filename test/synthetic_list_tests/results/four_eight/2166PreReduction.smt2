
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
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l2 l2) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l1 l3) (= l3 Nil) (= l0 Nil)) )
(assert (not (= l3 l3)) )
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(check-sat)
