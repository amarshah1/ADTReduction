
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
(assert (and (= l2 l3) (= l3 Nil) (= l1 l1)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l1 l0) (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
